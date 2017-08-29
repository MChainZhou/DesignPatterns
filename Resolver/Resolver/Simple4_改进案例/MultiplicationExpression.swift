//
//  MultiplicationExpression.swift
//  Resolver
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MultiplicationExpression: OperatorExpression {
    override init(left: ExpressionProtocol_3, right: ExpressionProtocol_3) {
        super.init(left: left, right: right)
    }
    
    override func interpret() -> Int {
        return self.left.interpret() * self.left.interpret()
    }
}
