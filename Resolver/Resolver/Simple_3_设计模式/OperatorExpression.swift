//
//  OperatorExpression.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//操作表达式
class OperatorExpression: ExpressionProtocol_3 {

    var left:ExpressionProtocol_3
    var right:ExpressionProtocol_3
    
    init(left:ExpressionProtocol_3,right:ExpressionProtocol_3) {
        self.left = left
        self.right = right
    }
    
    
    func interpret() -> Int {
        return 0
    }
}
