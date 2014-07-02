//
//  DatabaseListDataSource.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-22.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Foundation

class DatabaseListDataSource : NSObject, NSOutlineViewDataSource {
    
    func outlineView(outlineView: NSOutlineView!, numberOfChildrenOfItem item: AnyObject!) -> Int {
        return !item ? 2 : 0;
    }
    
    func outlineView(outlineView: NSOutlineView!, isItemExpandable item: AnyObject!) -> Bool {
        return false
    }
    
    func outlineView(outlineView: NSOutlineView!, child index: Int, ofItem item: AnyObject!) -> AnyObject! {
        return "Some object"
    }
    
    func outlineView(outlineView: NSOutlineView!, objectValueForTableColumn tableColumn: NSTableColumn!, byItem item: AnyObject!) -> AnyObject! {
        // Select the name from the object
        return "Some table"
    }
}