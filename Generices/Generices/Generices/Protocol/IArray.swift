//
//  IArray.swift
//  Generices
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//泛型协议
protocol IArray {
    //定义关联类型
    associatedtype ItemType
    func add(obj:ItemType);
    func remove(index:Int);
    func get(index:Int)->ItemType
    func removeAll()
    func forEach()
}
