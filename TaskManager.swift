//
//  TaskManager.swift
//  IntentlySwift
//
//  Created by Jim Toepel on 12/31/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

import UIKit


var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Decription"
}

class TaskManager: NSObject {
    var taskList = [task]()
    
    func addTask(name:String, desc: String){
        taskList.append(task(name:name, desc: desc))
    }
    
    
}

