//
//  VisitorProtocol.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//访问者接口
protocol VisitorProtocol {
    //访问工程是
    func visitor(engineer:Engineer)
    //访问项目经理
    func visitor(manager:Manager)
}
