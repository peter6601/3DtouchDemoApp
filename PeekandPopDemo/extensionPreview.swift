//
//  Preview.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/28.
//  Copyright © 2016年 Din. All rights reserved.
//

import Foundation

import UIKit

extension TestTableViewController: UIViewControllerPreviewingDelegate{
    
    // PEEK
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        guard let indexPath = tableView.indexPathForRowAtPoint(location),
            cell = tableView.cellForRowAtIndexPath(indexPath) else {return nil}
        
        
        guard let previewVC = storyboard?.instantiateViewControllerWithIdentifier("PreviewVC") as? PreviewViewController else {return nil}
        
        previewVC.selectedItem = list[indexPath.row]
        quickActionString = list[indexPath.row]
        
        
        previewVC.preferredContentSize = CGSize(width: 0, height: 150)
        
        previewingContext.sourceRect = cell.frame
        
        
        return previewVC
    }
    
    // POP
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        if let stuffVC = storyboard?.instantiateViewControllerWithIdentifier("AddStuffVC") as? ProductViewController{
            stuffVC.detailInfo = quickActionString
            
            showViewController(stuffVC, sender: self)
        }
        
        
    }
    
}