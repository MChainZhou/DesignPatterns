//
//  BossLeader.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class BossLeader: Leader {
    override func limit() -> Int {
        return 100000
    }
    
    override func handle(expense: ExpenseAccount) {
        print("报销单标题是：\(expense.getTitle()!)")
        print("报销单内容是：\(expense.getBody()!)")
        print("报销单金额是：\(expense.getMoney())")
        print("老板报销单审批通过....")
    }
}
