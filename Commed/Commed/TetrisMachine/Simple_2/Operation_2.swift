//
//  Operation_2.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Operation_2 {
    
    private var leftCommand:TMLeftCommand?
    private var rightCommand:TMRightCommand?
    private var buttomCommand:TMButtomCommand?
    private var transformCommand:TMTransformCommand?
    private var tm:TetrisMachine?
    
    
    var commandArray = Array<TMCommandProtocol>()
    
    
    init(leftCommand:TMLeftCommand,rightCommand:TMRightCommand,buttomCommand:TMButtomCommand,transformCommand:TMTransformCommand,tm:TetrisMachine) {
        self.tm = tm
        self.leftCommand = leftCommand
        self.rightCommand = rightCommand
        self.buttomCommand = buttomCommand
        self.transformCommand = transformCommand
    }
    
    func toLeft() {
        
        self.commandArray.append(TMLeftCommand(tm: self.tm!))
        self.leftCommand?.execute()
    }
    
    func toRight() {
        self.commandArray.append(TMRightCommand(tm:self.tm!))
        self.rightCommand?.execute()
    }
    
    func fastToButtom() {
        self.commandArray.append(TMButtomCommand(tm:self.tm!))
        self.buttomCommand?.execute()
    }
    
    func transform() {
        self.commandArray.append(TMTransformCommand(tm:self.tm!))
        self.transformCommand?.execute()
    }
    
    func updo(){
        if self.commandArray.count > 0 {
            print("执行撤销操作...撤销最后一步的动作")
            self.commandArray.removeLast().execute()
        }
    }
    
    func updoAll() {
        for command in self.commandArray {
            command.execute()
        }
        
        self.commandArray.removeAll()
    }
    
    //恢复执行
    func recover() {
        for command in self.commandArray {
            command.execute()
        }
    }
    
    

}
