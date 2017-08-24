//
//  OrderServer_4.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderServer_4: NSObject {
    

    var orderHistoryArray = Array<Order_4>()
    
    func addOrder(order:Order_4) {
        
        self.orderHistoryArray.append(order.copy(with: nil) as! Order_4)
    }
    
    func printOrder(callback:(Order_4)->Void){
        for order in self.orderHistoryArray {
            callback(order)
        }
    }
    
}
