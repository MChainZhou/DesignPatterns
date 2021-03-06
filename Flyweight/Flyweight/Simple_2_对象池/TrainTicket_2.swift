//
//  TrainTicket_2.swift
//  Flyweight
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TrainTicket_2: TicketProtocol_2 {
    var from: String
    var to: String
    var price: Int
    var bunk: String
    
    init(from:String,to:String) {
        self.from = from
        self.to = to
        self.price = 0
        self.bunk = ""
    }
    
    func showTicketInfo(bunk: String) {
        self.bunk = bunk
        if bunk == "硬座" {
            self.price = 64
        } else if bunk == "硬卧" {
            self.price = 128
        } else if bunk == "软卧" {
            self.price = 256
        } else if bunk == "二等座" {
            self.price = 468
        } else if bunk == "一等座" {
            self.price = 788
        } else if bunk == "商务座" {
            self.price = 1400
        }
        print("起点是：\(self.from) 终点是：\(self.to) 座位：\(self.bunk) 价格是：\(self.price)")
    }
}
