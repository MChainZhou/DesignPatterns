//
//  ComonentProtocol.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//组合接口
protocol ComonentProtocol {
    //在协议中定义属性
    //类属性
    var name:String {get}
    //子节点
    var components:Array<ComonentProtocol>{get}
    //具体的业务方法
    func doSomething()
}
