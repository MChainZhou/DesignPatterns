//
//  TicketFactory_2.swift
//  Flyweight
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TicketFactory_2: NSObject {
    static var ticketDic = [String:TicketProtocol_2]()
    
    class func ticket(from:String,to:String) -> TicketProtocol_2{
        let key = from + "-" + to
        
        if ticketDic[key] == nil {
            let ticket = TrainTicket_2(from: from, to: to)
            ticketDic[key] = ticket
        }
        return ticketDic[key]!
    }
    
}
