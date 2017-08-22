//
//  Leader.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Leader: NSObject {
    //定义下一个节点
    var nextLeader:Leader?
    
    final func handleExpense(expense:ExpenseAccount) {
        if expense.getMoney() <= self.limit() {
            handle(expense: expense)
        }else{
            nextLeader?.handleExpense(expense: expense)
        }
    }
    
    
    func handle(expense:ExpenseAccount) {
        
    }
    
    //限定金额
    func limit() -> Int {
        return 0
    }
    
    
}
