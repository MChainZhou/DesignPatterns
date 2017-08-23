//
//  TetrisMachine.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//俄罗斯方块：接收者(业务逻辑的具体操作)
class TetrisMachine {
    func toLeft() {
        print("向左")
    }
    
    func toRight() {
        print("向右")
    }
    
    func fastToButtom() {
        print("快速向下")
    }
    
    func transform() {
        print("变形")
    }
    
    func undo() {
        print("撤销")
    }
}
