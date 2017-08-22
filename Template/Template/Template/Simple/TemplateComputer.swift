//
//  TemplateComputer.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TemplateComputer: NSObject {
    override init() {
        
    }
    
    //按下电源
    func powerUp() {
        print("按下电源键")
    }
    
    //检测硬件
    func checkHardware() {
        print("检测硬件")
    }
    
    //加载系统
    func loadOS() {
        print("加载系统")
    }
    
    //登录系统
    func login() {
        print("登录系统")
    }
    
    
    // 开机
    final func startup () {
        powerUp()
        checkHardware()
        loadOS()
        login()
        
        print("开机了")
    }
    
    
}
