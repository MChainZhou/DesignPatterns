//
//  PayOrder.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class PayOrder: Order {
    var channel:String
    
    init(orderId: String, orderName: String, orderPrice: Int,channel:String) {
        self.channel = channel
        super.init(orderId: orderId, orderName: orderName, orderPrice: orderPrice)
    }
    
}
