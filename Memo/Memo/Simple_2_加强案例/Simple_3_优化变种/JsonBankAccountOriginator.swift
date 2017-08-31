//
//  JsonBankAccountOriginator.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class JsonBankAccountOriginator: OriginatorProtocol {
    
    var entries = [Int:BankAccount]()
    
    var total:Float = 0
    
    var nextID:Int = 1
    
    func addEntry(name:String,amount:Float,time:String) {
        let entry = BankAccount(id: nextID, name: name, amonut: amount, time: time)
        self.total += amount
        self.nextID += 1
        
        self.entries[nextID] = entry
    }
    
    
    //更新-存档
    func createMemo() -> MemoProtocol {
        return JsonBankAccountMemo(originator:self)
    }
    //更新-读档
    func applyMemo(memo: MemoProtocol) {
        if let entry = memo as? JsonBankAccountMemo {
            entry.apply(originator:self)
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
