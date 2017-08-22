//
//  NationalComputer.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class NationalComputer: TemplateComputer {
    override func powerUp() {
        print("国防系统电源")
    }
    
    override func checkHardware() {
        print("国防系统检测硬件")
    }
    
    override func loadOS() {
        print("国防系统检测系统")
    }
    
    override func login() {
        print("国防系统登录")
    }
    
}
