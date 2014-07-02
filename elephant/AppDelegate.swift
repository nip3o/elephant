//
//  AppDelegate.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-21.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet var window: NSWindow
    var connectController: ConnectionController? = nil


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        self.connectController = ConnectionController(windowNibName: "ConnectionWindow")
        
        
        self.connectController!.showWindow(self)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

