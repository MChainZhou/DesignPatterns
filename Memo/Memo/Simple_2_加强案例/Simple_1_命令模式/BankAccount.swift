//
//  BankAccount.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//实体类
class BankAccount {
    let id:Int
    let name:String
    let amonut:Float
    let time:String
    
    init(id:Int,name:String,amonut:Float,time:String) {
        self.id = id
        self.name = name
        self.amonut = amonut
        self.time  = time
    }
    
    
}
