//
//  TestViewController.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/28.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class TestViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var menuTable: UITableView!{
        didSet{
            menuTable.delegate = self
            menuTable.dataSource = self
        }
    }
    
    var stuffType:String!
    var quickActionString:String!
    
    let list = ["iPod","iMac","iPhone","iPad","iWatch"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if traitCollection.forceTouchCapability == .Available{
            registerForPreviewingWithDelegate(self, sourceView: menuTable)
        }
    }
    
    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testCell", forIndexPath: indexPath) 
        print("count = \(list.count)")
        let row  = list[indexPath.row]
        cell.textLabel?.text = row
        print("rowv is \(row)")
        
        
        
        return cell
    }
    
    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showItem" {
            if let itemVC = segue.destinationViewController as? ItemViewController{
                if let indexpath = menuTable.indexPathForSelectedRow{
                    itemVC.detailInfo = list[indexpath.row]
                }
            }
            
        }
        
    }
    
    
}

