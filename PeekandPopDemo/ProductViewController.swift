//
//  ProductViewController.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/28.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    
    @IBOutlet weak var productLabel: UILabel!
    
    var detailInfo:String?
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//            }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let stuffType = detailInfo {
            productLabel.text = stuffType
            
            print("detailInfo = \(detailInfo)")
        }

    }

}
