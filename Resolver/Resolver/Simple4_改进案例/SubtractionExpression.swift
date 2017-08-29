//
//  SubtractionExpression.swift
//  Resolver
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//减法运算
class SubtractionExpression: OperatorExpression {
    override func interpret() -> Int {
        return self.left.interpret() - self.right.interpret()
    }
}
