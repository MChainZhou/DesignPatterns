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
        //案例一
//        let handeler1 = ConcreteHandler1()
//        let handeler2 = ConcreteHandler2()
//        let handeler3 = ConcreteHandler3()
//        
//        handeler1.nextHandler = handeler2
//        handeler2.nextHandler = handeler3
//        
//        handeler1.handlerRequest(obj: "ConcreteHandler3");
        
        //案例二
//        let handler1 = AbsConcreteHandler1()
//        let handler2 = AbsConcreteHandler2()
//        let handler3 = AbsConcreteHandler3()
//        
//        handler1.nextHandler = handler2
//        handler2.nextHandler = handler3
//        
//        let request1 = ConcreteRequest1(obj: "深圳今天很热")
//        let request2 = ConcreteRequest2(obj: "但是快下班的时候下了点小雨")
//        let request3 = ConcreteRequset3(obj: "天气预报说明天有台风")
//        
//        handler2.handlerRequest(request: request3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

