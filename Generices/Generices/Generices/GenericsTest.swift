//
//  GenericsTest.swift
//  Generices
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class GenericsTest: NSObject {
    //方法泛型
    func change<Type>(a:inout Type,b:inout Type) {
        let c = a
        a = b
        b = c
        
    }
}
