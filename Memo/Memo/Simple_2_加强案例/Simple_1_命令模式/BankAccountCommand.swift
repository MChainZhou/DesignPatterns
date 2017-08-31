//
//  BankAccountCommand.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//具体的命令：持有命令的接收者
class BankAccountCommand {
    private let instructions:(BankAccountReceiver) -> Void
    
    private let receiver:BankAccountReceiver
    
    init(instructions:@escaping (BankAccountReceiver) -> Void,receiver:BankAccountReceiver) {
        self.instructions = instructions
        self.receiver = receiver
    }
    
    func excute() {
        self.instructions(self.receiver)
    }
}
