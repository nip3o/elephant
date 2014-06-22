//
//  DatabaseList.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-22.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Foundation

class DatabaseList : NSObject, NSTableViewDataSource {
    var databases = ["Kakor", "Muffins"]
    
    func numberOfRowsInTableView(aTableView: NSTableView!) -> Int {
        return self.databases.count
    }
    
    func tableView(aTableView: NSTableView!, objectValueForTableColumn aTableColumn: NSTableColumn!, row rowIndex: Int) -> AnyObject! {
        return self.databases[rowIndex]
    }
}