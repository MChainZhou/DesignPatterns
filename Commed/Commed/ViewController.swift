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
        
        
        
        
        
        //
    }




}

