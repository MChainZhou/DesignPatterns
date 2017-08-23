//
//  AnyIterator.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//默认实现
class AnyIterator<T>: IteratorProtocol {
    typealias itemType = T
    
    var array:Array<T>?
    //下标：用于记录当前遍历的位置
    var index:Int = 0
    
    
    init(array:Array<T>) {
        self.array = array
    }
    
    
    func next() -> T? {
        return nil
    }
    
    func hasNext() -> Bool {
        return false
    }
}
