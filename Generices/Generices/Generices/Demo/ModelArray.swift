//
//  ModelArray.swift
//  Generices
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//泛型的约束
class ModelArray<T:BaseModel>:IArray {
    typealias ItemType = T
    
    var array = Array<T>()
    
    func add(obj: T) {
        self.array.append(obj)
    }
    
    func get(index: Int) -> T {
        return self.array[index]
    }
    
    func remove(index: Int) {
        self.array.remove(at: index)
    }
    
    func removeAll() {
        self.array.removeAll()
    }
    
    func forEach() {
        for item in self.array {
            print(item)
        }
    }


}
