//
//  TianMaoAggregate.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TianMaoAggregate: NSObject {
    var array = Array<OrderModel>()
    
    override init() {
        super.init()
        self.array.append(OrderModel(orderId: "1", orderName: "买了皮鞋", orderPrice: 998, orderDetail: "男士帅气需要"))
        self.array.append(OrderModel(orderId: "2", orderName: "买了衬衣", orderPrice: 668, orderDetail: "男士帅气需要"))
        self.array.append(OrderModel(orderId: "3", orderName: "买了MacPro", orderPrice: 16880, orderDetail: "装逼神奇"))
    }
    
    func iterator() -> TianMaoIterator {
        return TianMaoIterator(array: self.array)
    }
    
}
