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
        
        
        let concreteCommand = ConcreteCommand(receiver: Receiver())
        
        let invoker = Invoker(command: concreteCommand)
        
        invoker.action()
        
        
    }




}

