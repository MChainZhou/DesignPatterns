//
//  TicketProtocol_2.swift
//  Flyweight
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

protocol TicketProtocol_2 {
    var from:String{get}
    var to:String{get}
    var price:Int{get}
    var bunk:String{get}
    
    
    func showTicketInfo(bunk:String)
}
