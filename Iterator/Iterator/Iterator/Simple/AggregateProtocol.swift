//
//  AggregateProtocol.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import Foundation


//角色三：容器接口
protocol AggregateProtocol {
    associatedtype DataType
    
    //添加元素
    func add(obj:DataType)
    //删除元素
    func remove(index:Int)
    //获取迭代器
    func itertor() -> AnyIterator<DataType>
}
