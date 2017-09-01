//
//  Manager.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Manager: StaffProtocol {
    var name: String
    var kpi: Int
    var productCount:Int = 0
    
    
    required init(name: String) {
        self.name = name
        self.kpi = Int(arc4random() % 1000000)
        self.productCount = Int(arc4random() % 50)
    }
    
    func accept(visitor: VisitorProtocol) {
        visitor.visitor(manager:self)
    }
}
