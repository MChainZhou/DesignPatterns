//
//  ExpenseAccount.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ExpenseAccount: AbsHandler {
    //报销单名称
    var title:String?
    //报销单金额
    var money:Int?
    //报销单描述
    var body:String?
    
    init(title:String?,money:Int,body:String?) {
        self.title = title
        self.money = money
        self.body = body
    }
    
    func getTitle() -> String? {
        return self.title
    }
    
    func getBody() -> String? {
        return self.body
    }
    
    func getMoney() -> Int {
        return self.money!
    }
    
    
    
}
