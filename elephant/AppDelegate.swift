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


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        println("App loaded")

    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

