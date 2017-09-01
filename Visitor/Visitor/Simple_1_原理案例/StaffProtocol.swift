//
//  StaffProtocol.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//元素接口
protocol StaffProtocol {
    var name:String{get set}
    var kpi:Int{get set}
    
    init(name:String)
    
    //接收访问者
    func accept(visitor:VisitorProtocol)
}
