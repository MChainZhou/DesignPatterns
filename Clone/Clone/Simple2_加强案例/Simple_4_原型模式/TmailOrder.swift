//
//  TmailOrder.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TmailOrder: PayOrder_4 {
    var detail:String
    
    init(orderId: String, orderName: String, orderPrice: Int, channel: String,detail:String) {
        self.detail = detail
        super.init(orderId: orderId, orderName: orderName, orderPrice: orderPrice, channel: channel)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        return TmailOrder(orderId: self.orderId, orderName: self.orderName, orderPrice: self.orderPrice, channel: self.channel, detail: self.detail)
    }
}
