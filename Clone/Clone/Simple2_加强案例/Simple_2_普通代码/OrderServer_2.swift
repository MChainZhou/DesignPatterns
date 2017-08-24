//
//  OrderServer_2.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderServer_2: NSObject {
    var orderHistoryArray = Array<Order>()
    
    func addOrder(order:Order) {
        self.orderHistoryArray.append(Order(orderId: order.orderId, orderName: order.orderName, orderPrice: order.orderPrice))
    }
    
    func printOrder(callback:(Order)->Void){
        for order in self.orderHistoryArray {
            callback(order)
        }
    }
}
