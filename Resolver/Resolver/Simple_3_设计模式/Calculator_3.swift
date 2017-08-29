//
//  Calculator_3.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//计算器
class Calculator_3: NSObject {
    private var stackArray = Array<ExpressionProtocol_3>()
    
    init(expression:String) {
        let array = expression.characters.split(separator: " ").map(String.init)
        print(array)
        
        for index in 0...array.count - 1 {
            let value = array[index]
            
            if index == 0 {
                stackArray.append(NumberExpression_3(number: value))
            }
            
            if value == "+" {
                let left = stackArray.removeLast()
                let right = NumberExpression_3(number: array[index + 1])
                stackArray.append(AddExpression(left: left, right: right))
                
            }
            
        }
    }
    
    func calculator() -> Int {
        return stackArray.removeLast().interpret()
    }
}
