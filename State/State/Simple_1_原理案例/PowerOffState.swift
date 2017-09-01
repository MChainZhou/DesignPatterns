//
//  PowerOffState.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//角色二：具体的状态
class PowerOffState: StateProtocol {
    func nextChannel() {
        print("没有开机")
    }
    
    func prevChannel() {
        print("没有开机")
    }
    
    func turnDown() {
        print("没有开机")
    }
    
    func turnUP() {
        print("没有开机")
    }
    
}
