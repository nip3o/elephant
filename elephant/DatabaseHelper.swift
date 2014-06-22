//
//  DatabaseHelper.swift
//  elephant
//
//  Created by Niclas Olofsson on 2014-06-21.
//  Copyright (c) 2014 Niclas Olofsson. All rights reserved.
//

import Foundation

class DatabaseHelper {
    var connection: PGConnection? = nil
    
    func getDatabaseNames(user: String, host: String, port: Integer, error: NSErrorPointer) -> NSArray? {
        let db: PGConnection = PGConnection()
        let url: NSURL = NSURL(string: "postgresql://\(user)@\(host):\(port)")
        
        if(!db.connectWithURL(url, error: error)) {
            return nil
        }
        
        var result = db.execute("SELECT datname FROM pg_database WHERE datistemplate = false;", error: error)
        var output: NSMutableArray = NSMutableArray()
        
        if result.dataReturned {
            var row: NSArray?
            
            while true {
                row = result.fetchRowAsArray()
                if !row {
                    break
                }
                output.addObject(row![0])
            }
        }
        
        return output
        
    }

    func connectToDatebase(user: NSString, host: NSString, port: NSInteger, database: NSString, error: NSErrorPointer) -> Bool {
        self.connection = PGConnection()
        let url: NSURL = NSURL(string: "postgresql://\(user)@\(host):\(port)/\(database)")
        
        if(!self.connection!.connectWithURL(url, error: error)) {
            return false
        }
        return true
    }
    
    func getTableNames(error: NSErrorPointer) -> NSArray? {
        assert(self.connection)
        
        let db: PGConnection = self.connection!
        var result = db.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_type='BASE TABLE';", error: error)
        var output: NSMutableArray = NSMutableArray()
        
        if result.dataReturned {
            var row: NSArray?
            
            while true {
                row = result.fetchRowAsArray()
                if !row {
                    break
                }
                output.addObject(row![0])
            }
        }
        
        return output
        
    }
    
    
}
