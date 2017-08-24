//
//  OrderServer_5.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OrderServer_5: NSObject {
    var orderHistoryArray = Array<NSCopying>()
    
    func addOrder(order:NSCopying) {
        
        self.orderHistoryArray.append(order.copy(with: nil) as! Order_4)
    }
    
    func printOrder(callback:(NSCopying)->Void){
        for order in self.orderHistoryArray {
            callback(order)
        }
    }
}
