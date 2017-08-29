//
//  AddExpression.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//"+"号表达式
class AddExpression: OperatorExpression {
    
    override func interpret() -> Int {
        return self.right.interpret() + self.left.interpret()
    }
}
