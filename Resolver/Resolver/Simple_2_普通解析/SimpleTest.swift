//
//  SimpleTest.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class SimpleTest: NSObject {
    class func interporet(expression:String) -> Int {
        
        
        
        
        let array = expression.characters.split(separator: " ").map(String.init)
        
        print(array)
        
        var sum = Int(array[0])!
        
        for index in 0...array.count - 1 {
            if array[index] == "+" {
                sum = sum + Int(array[index + 1])!
            }
            if array[index] == "-" {
                sum = sum - Int(array[index + 1])!
            }
        }
        
        return sum
    }
}
