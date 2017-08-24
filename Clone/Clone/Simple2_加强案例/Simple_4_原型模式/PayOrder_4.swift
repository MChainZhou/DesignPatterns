//
//  PayOrder_4.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class PayOrder_4: Order_4 {
    var channel:String
    
    init(orderId: String, orderName: String, orderPrice: Int,channel:String) {
        self.channel = channel
        
        super.init(orderId: orderId, orderName: orderName, orderPrice: orderPrice)
    }
    
    
    override func copy(with zone: NSZone? = nil) -> Any {
        return PayOrder_4(orderId: self.orderId, orderName: self.orderName, orderPrice: self.orderPrice, channel: self.channel)
    }
}
