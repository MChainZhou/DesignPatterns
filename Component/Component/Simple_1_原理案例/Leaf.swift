//
//  Leaf.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Leaf: ComonentProtocol {
    var name: String
    
    var components: Array<ComonentProtocol>
    
    init(name:String) {
        self.name = name
        self.components = Array<ComonentProtocol>()
    }
    
    func doSomething(){
//        print("叶子节点：\(self.name)")
    }

}
