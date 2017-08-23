//
//  ViewController.swift
//  Generices
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //协议泛型
        let array = ConcreteArray<Int>()
        
        array.add(obj: 10)
        array.add(obj: 20)
        array.forEach()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

