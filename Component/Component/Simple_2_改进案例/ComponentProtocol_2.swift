//
//  ComonentProtocol_2.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

protocol ComponentProtocol_2 {
    var name:String {get}
    
    var components:Array<ComponentProtocol_2>{get}
    
    //抽象方法
    func doSomething()
    func addChild(child:ComponentProtocol_2)
    func getChild(index:Int) -> ComponentProtocol_2
    func removeChild(child:ComponentProtocol_2)
    func clear()
    func getName() -> String
    
    
}
