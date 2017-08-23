//
//  MacInvoker.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//请求者
class MacInvoker {
    var startupCommand:MacStartupCommand?
    var shutCommand:MacShutdownCommand?
    
    
    init(startupCommand:MacStartupCommand,shutCommand:MacShutdownCommand) {
        self.startupCommand = startupCommand
        self.shutCommand = shutCommand
    }
    
    //开机的命令
    func startup() {
        self.startupCommand?.execute()
    }
    
    //关机的命令
    func shutdown() {
        self.shutCommand?.execute()
    }
    
}
