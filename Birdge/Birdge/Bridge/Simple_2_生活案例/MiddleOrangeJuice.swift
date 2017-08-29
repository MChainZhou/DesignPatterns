//
//  MiddleOrangeJuice.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MiddleOrangeJuice: OrangeJuice {
    override func makeOrangeJuice() {
        print("我需要一杯中杯\(self.impl.doSometring())橙汁")
    }
}
