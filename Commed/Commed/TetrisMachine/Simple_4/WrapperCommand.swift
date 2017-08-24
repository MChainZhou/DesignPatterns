//
//  WrapperCommand.swift
//  Commed
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//复合指令
class WrapperCommand:TMCommandProtocol {

    
    var commandArray:Array<TMCommandProtocol>?
    
    init(commandArray:Array<TMCommandProtocol>) {
        self.commandArray = commandArray
    }
    
    
    func execute() {
        for command in self.commandArray! {
            command.execute()
        }
    }
}
