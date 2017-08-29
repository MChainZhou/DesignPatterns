//
//  LargeOrangeJuice.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//抽象部分->具体的实现
class LargeOrangeJuice: OrangeJuice {
    override func makeOrangeJuice() {
        print("我需要一杯大杯\(self.impl.doSometring())橙汁")
    }
}
