//
//  SecondViewController.swift
//  IntentlySwift
//
//  Created by Jim Toepel on 12/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//


import UIKit


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var tblTasks : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblTasks.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.taskList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default Tasks")
        cell.textLabel?.text = taskMgr.taskList[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.taskList[indexPath.row].desc
    
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            taskMgr.taskList.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }
}
