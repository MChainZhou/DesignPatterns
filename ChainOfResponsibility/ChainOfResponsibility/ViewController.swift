//
//  ViewController.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let handeler1 = ConcreteHandler1()
        let handeler2 = ConcreteHandler2()
        let handeler3 = ConcreteHandler3()
        
        handeler1.nextHandler = handeler2
        handeler2.nextHandler = handeler3
        
        handeler1.handlerRequest(obj: "ConcreteHandler3");
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

