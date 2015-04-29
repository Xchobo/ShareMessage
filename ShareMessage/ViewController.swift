//
//  ViewController.swift
//  ShareMessage
//
//  Created by Xchobo on 2015/4/29.
//  Copyright (c) 2015年 Xchobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var showLabel: UILabel!
    @IBOutlet var showTextField: UITextField!
    
    @IBAction func saveInfo(sender: AnyObject) {
        // 儲存文字
        var str = showTextField.text
        showLabel.text = str
        
        // 儲存共享資源
        var sharedefault: NSUserDefaults = NSUserDefaults(suiteName: "group.sharingmessage")!
        sharedefault.setObject(str, forKey: "strMessage")
        sharedefault.synchronize()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

