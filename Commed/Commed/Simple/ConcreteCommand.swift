//
//  ConcreteCommand.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//角色三：具体的命令
//负责调用接收逻辑方法,行为方法
class ConcreteCommand: CommandProtocol {
    var receiver:Receiver?
    
    init(receiver:Receiver) {
        self.receiver = receiver
    }
    
    func execute() {
        self.receiver?.action()
    }
}
