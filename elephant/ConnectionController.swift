//
//  ConnectionController.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-22.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Foundation
import Cocoa


class ConnectionController: NSWindowController {
    
    var explorer: ExplorerController? = nil
    
    @IBOutlet var controllerWindow: NSWindow
    
    @IBOutlet var hostField: NSTextField
    @IBOutlet var usernameField: NSTextField
    @IBOutlet var passwordField: NSTextField
    @IBOutlet var portField: NSTextField
    
    @IBAction func connectButtonClicked(AnyObject) {
        let db = DatabaseHelper()
        let username = usernameField.stringValue
        let host = hostField.stringValue
        let port = portField.integerValue

        var error: NSError? = nil

//        var databases = db.getDatabaseNames(username, host: host, port: port, error: &error)
//        println(databases)
        
        self.explorer = ExplorerController(windowNibName: "ExplorerWindow")
        self.explorer!.showWindow(self)

    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        println("ConnectionWindow was loaded")
    }
    
    
}