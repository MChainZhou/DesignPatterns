//
//  Engineer.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Engineer: StaffProtocol {
    var name: String
    var kpi: Int
    var codeLines:Int
    
     required init(name:String) {
        self.name = name
        self.kpi = Int(arc4random() % 1000000)
        self.codeLines = Int(arc4random() / 100000)
    }
    
    func accept(visitor: VisitorProtocol) {
        visitor.visitor(engineer:self)
    }
}
