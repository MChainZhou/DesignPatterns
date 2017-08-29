//
//  OrangeJuice.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//抽象部分->橙汁
class OrangeJuice {
    var impl:OrangeJuiceAdditives
    
    init(impl:OrangeJuiceAdditives) {
        self.impl = impl
    }
    
    func makeOrangeJuice() {
        
    }

}
