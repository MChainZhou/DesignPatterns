//
//  IteratorProtocol.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import Foundation

//角色一：迭代器接口
protocol IteratorProtocol {
    associatedtype itemType
    
    //下一个元素
    func next() -> itemType?
    
    //是否有元素
    func hasNext() -> Bool
}
