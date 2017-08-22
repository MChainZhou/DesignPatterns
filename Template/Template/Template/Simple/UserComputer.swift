//
//  UserComputer.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//具体的细节实现
class UserComputer: TemplateComputer {
    override func powerUp() {
        print("用户的电脑按下了电源")
    }
    
    override func checkHardware() {
        print("用户的电脑检测硬件")
    }
    
    override func loadOS() {
        print("用户的电脑加载系统")
    }
    
    override func login() {
        print("用户的电脑登录系统")
    }
}
