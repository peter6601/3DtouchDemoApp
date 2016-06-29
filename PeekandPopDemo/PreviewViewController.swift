//
//  PreviewViewController.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/28.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    @IBOutlet weak var previewLabel: UILabel!
    var selectedItem:String!
   
    var previewActions:[UIPreviewActionItem] {
        
        let item1 = UIPreviewAction(title: "Do something", style: .Default) { (action:UIPreviewAction, vc:UIViewController) -> Void in
            print("Awesome")
        }
        
        let item2 = UIPreviewAction(title: "Do even more", style: .Default) { (action:UIPreviewAction, vc:UIViewController) -> Void in
            print("cool")
        }
        
        return [item1, item2]
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        previewLabel.text = selectedItem
        
    }
    
    
    

}
