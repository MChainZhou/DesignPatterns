//
//  CTOVisitor.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class CTOVisitor: VisitorProtocol {
    private var name:String
    
    init(name:String) {
        self.name = name
        print("CTO-\(name)")
    }
    
    func visitor(manager: Manager) {
        print("项目经理的名字-\(manager.name),产品的数量-\(manager.productCount)")
    }
    
    func visitor(engineer: Engineer) {
        print("工程师的名字-\(engineer.name),代码量-\(engineer.codeLines)")
    }
}
