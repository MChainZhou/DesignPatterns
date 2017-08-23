//
//  Operation_1.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//点击按钮的操作
class Operation_1 {

    private var leftCommand:TMLeftCommand?
    private var rightCommand:TMRightCommand?
    private var buttomCommand:TMButtomCommand?
    private var transformCommand:TMTransformCommand?
    
    
    init(leftCommand:TMLeftCommand,rightCommand:TMRightCommand,buttomCommand:TMButtomCommand,transformCommand:TMTransformCommand) {
        self.leftCommand = leftCommand
        self.rightCommand = rightCommand
        self.buttomCommand = buttomCommand
        self.transformCommand = transformCommand
    }
    
    func toLeft() {
        self.leftCommand?.execute()
    }
    
    func toRight() {
        self.rightCommand?.execute()
    }
    
    func fastToButtom() {
        self.buttomCommand?.execute()
    }
    
    func transform() {
        self.transformCommand?.execute()
    }
}
