//
//  ItemViewController.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/28.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
      var detailInfo:String?
    var selectedItem:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedItem
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
