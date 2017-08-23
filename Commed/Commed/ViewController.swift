//
//  ViewController.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //案例一
//        let concreteCommand = ConcreteCommand(receiver: Receiver())
//        
//        let invoker = Invoker(command: concreteCommand)
//        
//        invoker.action()
        
        
        //案例二
        
        let computer = MacComputer()
        
        let startup = MacStartupCommand(computer: computer)
        let shutdown = MacShutdownCommand(computer: computer)
        
        let invoker = MacInvoker(startupCommand: startup, shutCommand: shutdown)
        
        invoker.startup()
        
        invoker.shutdown()
        
        
        
        
        
        //案例三：测试->基本命令模式
        let tm = TetrisMachine()
        
        let leftCommand = TMLeftCommand(tm: tm)
        let rightCommand = TMRightCommand(tm: tm)
        let buttomCommand = TMButtomCommand(tm: tm)
        let transformCommand = TMTransformCommand(tm: tm)
        
        let button = Operation_2(leftCommand: leftCommand, rightCommand: rightCommand, buttomCommand: buttomCommand, transformCommand: transformCommand, tm: tm)
        button.toLeft()
        button.toRight()
        button.fastToButtom()
        button.updo()
    }




}

