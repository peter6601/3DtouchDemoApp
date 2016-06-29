//
//  TestTableViewController.swift
//  PeekandPopDemo
//
//  Created by 丁暐哲 on 2016/6/27.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {
    
    let list = ["iPod","iMac","iPhone","iPad","iWatch"]
    
    
    var stuffType:String!
    var quickActionString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if traitCollection.forceTouchCapability == .Available {
            registerForPreviewingWithDelegate(self, sourceView: tableView)
        }
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testTableCell", forIndexPath: indexPath)
        let row  = list[indexPath.row]
        cell.textLabel?.text = row
        
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showStuff" {
            if let stuffVC = segue.destinationViewController as? ProductViewController {
                if let indexpath = self.tableView.indexPathForSelectedRow {
                    stuffVC.detailInfo = list[indexpath.row]
                    
                }
                
            }
            
        }
        
        
    }
}