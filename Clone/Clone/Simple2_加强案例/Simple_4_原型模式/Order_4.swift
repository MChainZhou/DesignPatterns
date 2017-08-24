//
//  Order_4.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Order_4: NSCopying {
    var orderId:String
    var orderName:String
    var orderPrice:Int
    
    init(orderId:String,orderName:String,orderPrice:Int) {
        self.orderId = orderId
        self.orderName = orderName
        self.orderPrice = orderPrice
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Order_4(orderId: self.orderId, orderName: self.orderName, orderPrice: self.orderPrice)
    }
    
}
