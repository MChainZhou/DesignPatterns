//
//  OrderModel.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderModel: NSObject {
    var orderId:String?
    var orderName:String?
    var orderPrice:Int = 0
    var orderDetail:String?
    
    init(orderId:String,orderName:String,orderPrice:Int,orderDetail:String) {
        super.init()
        self.orderId = orderId
        self.orderName = orderName
        self.orderPrice = orderPrice
        self.orderDetail = orderDetail
    }
}
