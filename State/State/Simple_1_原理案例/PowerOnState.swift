//
//  PowerOnState.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//角色二：具体的状态
class PowerOnState: StateProtocol {
    func nextChannel() {
        print("切换到下一个频道")
    }
    
    func prevChannel() {
        print("切换到上一个频道")
    }
    func turnDown() {
        print("调高音量")
    }
    
    func turnUP() {
        print("调低音量")
    }
}

