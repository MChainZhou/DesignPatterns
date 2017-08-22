//
//  ConcreteHandler2.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ConcreteHandler2: Handler {
    override func handlerRequest(obj: String?) {
        if obj == "ConcreteHandler2" {
            print("执行当前的ConcreteHandler2")
        }else{
            nextHandler?.handlerRequest(obj: obj)
        }
    }
}
