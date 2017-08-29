//
//  ExpressionProtocol.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//抽象的表达式
protocol ExpressionProtocol {
    
    //计算方法
    //解析器
    func interpret() -> Int
}
