//
//  TanZhouAggregate.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TanZhouAggregate: NSObject {
    private var array = Array<OrderModel>()
    
    override init() {
        super.init()
        
        self.array.append(OrderModel(orderId: "1", orderName: "衬衫", orderPrice: 100, orderDetail: "嘻哈"))
        self.array.append(OrderModel(orderId: "2", orderName: "牛仔裤", orderPrice: 140, orderDetail: "掉裆"))
        self.array.append(OrderModel(orderId: "3", orderName: "帽子", orderPrice: 50, orderDetail: "时尚"))
    }
    
    func iterator() -> TanZhouIterator {
        return TanZhouIterator(array: self.array)
    }
}
