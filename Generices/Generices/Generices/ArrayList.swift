//
//  ArrayList.swift
//  Generices
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//泛型类定义实现
class ArrayList<T>: NSObject {
    private var array = Array<T>()
    
    
    //添加元素
    func add(obj:T) {
        self.array.append(obj)
    }
    
    //获得指定的元素
    func get(index:Int) -> T {
        return self.array[index]
    }
    
    //移除指定的元素
    func remove(index:Int) {
        self.array.remove(at: index)
    }
    
    //打印数组
    func forEach() {
        for item in self.array {
            print(item)
        }
    }
}
