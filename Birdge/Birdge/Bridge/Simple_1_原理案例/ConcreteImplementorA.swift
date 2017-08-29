//
//  ConcreteImplementorA.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ConcreteImplementorA: Implementor {
    func operationImpl() {
        print("部分实现->具体的业务逻辑")
    }
}
