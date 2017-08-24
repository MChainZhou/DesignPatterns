//
//  Order.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Order {
    var orderId:String
    var orderName:String
    var orderPrice:Int
    
    init(orderId:String,orderName:String,orderPrice:Int) {
        self.orderId = orderId
        self.orderName = orderName
        self.orderPrice = orderPrice
    }
    
}
