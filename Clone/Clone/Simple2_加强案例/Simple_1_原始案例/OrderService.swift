//
//  OrderService.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderService {
    var orderHistoryArray = Array<Order>()
    
    func addOrder(order:Order) {
        self.orderHistoryArray.append(order)
    }
    
    func printOrder(callback:(Order)->Void){
        for order in self.orderHistoryArray {
            callback(order)
        }
    }
    
    
}
