//
//  StateProtocol.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//角色一：状态接口
protocol StateProtocol {
    
    func nextChannel()
    func prevChannel()
    func turnUP()
    func turnDown()
}
