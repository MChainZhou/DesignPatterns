//
//  ConcreteIterator.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//角色二：具体的迭代器
class ConcreteIterator<T>: AnyIterator<T> {
    
    override func next() -> T? {
        
        if hasNext() {
            let result = self.array?[index]
            index += 1
            return result
        }
        
        return nil
    }
    
    override func hasNext() -> Bool {
        return self.index != self.array?.count
    }
}
