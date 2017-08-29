//
//  NumberExpression_3.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//终结符号表达式
class NumberExpression_3: ExpressionProtocol_3 {

    private var number:Int
    init(number:String) {
        self.number = Int(number)!
    }
    
    func interpret() -> Int {
        return self.number
    }
}
