//
//  ExplorerController.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-22.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Foundation
import Cocoa


class ExplorerController: NSWindowController, NSOutlineViewDelegate {
    @IBOutlet var databaseNames: NSMutableArray = NSMutableArray()
    @IBOutlet var databaseDropdown: NSPopUpButton
    
    @IBAction func databaseSelected(AnyObject) {
        var name = databaseDropdown.titleOfSelectedItem
        println("DB \(name) selected")
    
    }
    
    func outlineView(outlineView: NSOutlineView!, shouldExpandItem item: AnyObject!) -> Bool {
        return false
    }
    
    
    
}