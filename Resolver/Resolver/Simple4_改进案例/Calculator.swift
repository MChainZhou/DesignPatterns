//
//  Calculator.swift
//  Resolver
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Calculator: NSObject {
    private var stackArray = Array<ExpressionProtocol_3>()
    
    init(expression:String) {
        let array = expression.characters.split(separator: " ").map(String.init)
        print(array)
        
        var left:ExpressionProtocol_3?,right:ExpressionProtocol_3?
        
        for index in 0...array.count - 1 {
            let value = array[index]
            if index == 0 {
                //处理第一个终结符
                stackArray.append(NumberExpression_3(number: value))
            }
            
            //处理非终结符
            if value == "+" {
                left = stackArray.removeLast()
                right = NumberExpression_3(number: array[index + 1])
                stackArray.append(AddExpression(left: left!, right: right!))
            }else if value == "-" {
                left = stackArray.removeLast()
                right = NumberExpression_3(number: array[index + 1])
                stackArray.append(SubtractionExpression(left: left!, right: right!))
            }else if value == "*" {
            
            }else if value == "/"{
            
            }
            
            
        }
        
    }
    
    func calculator() -> Int {
        return self.stackArray.removeLast().interpret()
    }
}
