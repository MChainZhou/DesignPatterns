//
//  Abstraction.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Abstraction: NSObject {
    var implementor:Implementor
    
    init(implementor:Implementor) {
        self.implementor = implementor
    }
    
    //定义一个业务方法
    func operation()  {
        self.implementor.operationImpl()
    }
    
}
