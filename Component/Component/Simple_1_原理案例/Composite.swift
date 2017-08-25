//
//  Composite.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Composite: ComonentProtocol {
    var name: String
    
    var components: Array<ComonentProtocol>
    
    init(name:String) {
        self.name = name
        self.components = Array<ComonentProtocol>()
    }
    
    //具体的一些业务
    func doSomething() {
        print("节点名称\(self.name)")
        
        for component in components {
            component.doSomething()
        }
    }
    
    func addChild(child:ComonentProtocol) {
        self.components.append(child)
    }
    
    //根据节点名称删除
    func removeChild(child:ComonentProtocol) {
        self.components.remove(at: self.components.index(where: {$0.name == child.name})!)
    }
    
    //返回指定的节点
    func getChilder(index:Int) -> ComonentProtocol {
        return self.components[index]
    }
    
    //清楚节点
    func clear() {
        self.components.removeAll()
    }
    
    func getName() -> String {
        return self.name
    }
}
