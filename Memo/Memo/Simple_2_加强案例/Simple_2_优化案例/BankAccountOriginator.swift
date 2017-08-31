//
//  BankAccountOriginator.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class BankAccountOriginator: OriginatorProtocol {
    
    //账户对象集合(字典)
    //key-value形式(多个)
    var entries = [Int:BankAccount]()
    //账户id增长属性
    var nextId:Int = 1
    //总金额
    var total:Float = 0
    
    //添加账号
    func addEntry(name:String,amount:Float,time:String) {
        let entry = BankAccount(id: nextId, name: name, amonut: amount, time: time)
        entries[nextId] = entry
        nextId += 1
        self.total += amount
    }
    
    func createMemo() -> MemoProtocol {
        return BankAccountMemo(originator: self)
    }
    
    func applyMemo(memo: MemoProtocol) {
        if let m = memo as? BankAccountMemo {
            m.apply(originator: self)
        }
    }
    
    //输出
    func printEntries() {
        for entry in self.entries.values.sorted(by: { (b1, b2) -> Bool in
            return b1.id < b2.id
        }) {
            print("id:\(entry.id) 姓名:\(entry.name) 金额:\(entry.amonut) 时间:\(entry.time)")
        }
        print("--------------------------")
    }
}
