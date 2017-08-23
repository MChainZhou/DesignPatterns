//
//  ConcreteAggregete.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ConcreteAggregete<T>: AggregateProtocol {
    typealias DataType = T
    
    private var array = Array<T>()
    
    func add(obj: T) {
        self.array.append(obj)
    }
    
    func remove(index: Int) {
        self.array.remove(at: index)
    }
    
    func itertor() -> AnyIterator<T> {
        return AnyIterator<T>(array: self.array)
    }
}
