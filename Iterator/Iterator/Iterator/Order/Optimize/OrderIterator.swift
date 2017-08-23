//
//  OrderIterator.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderIterator<T>: OrderIteratorProtocol {
    
    //抽象属性，子类使用
    var obj:T?
    var index:Int = 0
    
    init(obj:T) {
        self.obj = obj
    }
    
    
    func next() -> OrderModel? {
        return nil
    }
    
    func hasNext() -> Bool {
        return false
    }
}
