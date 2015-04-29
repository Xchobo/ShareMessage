//
//  InterfaceController.swift
//  ShareMessage WatchKit Extension
//
//  Created by Xchobo on 2015/4/29.
//  Copyright (c) 2015年 Xchobo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var message: WKInterfaceLabel!
    @IBOutlet var receiveBtn: WKInterfaceButton!
    
    @IBAction func receiveMessage() {
        // 取回共享資源
        var sharedefault: NSUserDefaults = NSUserDefaults(suiteName: "group.sharingmessage")!
        sharedefault.synchronize()
        
        // 設定文字（要用setText，不可用text）
        message.setText(sharedefault.stringForKey("strMessage")!)
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
