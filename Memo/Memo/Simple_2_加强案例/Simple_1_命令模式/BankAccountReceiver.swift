//
//  BankAccountReceiver.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//命令的接收者：处理对象
class BankAccountReceiver {
    //账户对象集合
    private var entries = [Int:BankAccount]()
    //账户id的增长属性
    private var nextId:Int = 1
    //总金额
    private var total:Float = 0
    
    @discardableResult func addEntry(name:String,amount:Float,time:String) -> BankAccountCommand {
        let entry = BankAccount(id: nextId, name: name, amonut: amount, time: time)
        self.entries[nextId] = entry
        nextId += 1
        
        self.total += amount
        
        return creatUndoCommand(entry: entry)
    }
    
    //命令模式 -> 撤销
    private func creatUndoCommand(entry:BankAccount) -> BankAccountCommand {
        return BankAccountCommand(instructions: { (receiver) in
            let removeObj = receiver.entries.removeValue(forKey: entry.id)
            
            if removeObj != nil {
                receiver.total -= (removeObj?.amonut)!
            }
        }, receiver: self)
    }
    
    func printEntries() {
        for entry in self.entries.values.sorted(by: {(b1,b2) -> Bool in
            return b1.id < b2.id
        }) {
            print("id:\(entry.id) 姓名:\(entry.name) 金额:\(entry.amonut) 时间:\(entry.time)")
        }
        
        
    }
}
