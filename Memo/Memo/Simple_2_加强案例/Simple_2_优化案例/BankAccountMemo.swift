//
//  BankAccountMemo.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//具体的备忘录
class BankAccountMemo: MemoProtocol {
    //账户数组
    private var entries = [BankAccount]()
    //账户的ID
    private var nextID:Int = 1
    //总金额
    private var total:Float = 0
    
    init(originator:BankAccountOriginator) {
        self.total = originator.total
        self.nextID = originator.nextId
        self.entries.removeAll()
        for entry in originator.entries.values {
            self.entries.append(entry)
        }
    }
    
    func apply(originator:BankAccountOriginator){
        originator.total = self.total
        originator.nextId = self.nextID
        originator.entries.removeAll()
        for entry in self.entries {
            originator.entries[entry.id] = entry
        }
    }
}
