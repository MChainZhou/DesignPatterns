//
//  Leaf_2.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Leaf_2: ComponentProtocol_2 {
    var name: String
    var components: Array<ComponentProtocol_2>
    
    init(name:String) {
        self.name = name
        components = Array<ComponentProtocol_2>()
    }
    
    func doSomething() {
        print("执行具体的\(self.name)");
    }
    
    func addChild(child: ComponentProtocol_2) {
        self.components.append(child)
    }
    
    func removeChild(child: ComponentProtocol_2) {
        self.components.remove(at: self.components.index(where: {$0.name == child.name})!)
    }
    
    func getChild(index: Int) -> ComponentProtocol_2 {
        return self.components[index]
    }
    
    func clear() {
        self.components.removeAll()
    }
    
    func getName() -> String {
        return self.name
    }
}
