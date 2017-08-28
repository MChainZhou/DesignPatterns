//
//  TiketFactory.swift
//  Flyweight
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//获得火车票
class TiketFactory: NSObject {
    class func ticket(form:String,to:String) -> TicketProtocol {
        return TrainTicket(from: form, to: to)
    }
}
