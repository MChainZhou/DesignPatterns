//
//  ViewController.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = ConcreteAggregete<String>()
        array.add(obj: "张三")
        array.add(obj: "李四")
        array.add(obj: "王五")
        array.add(obj: "赵六")
        array.add(obj: "钱七")
        
        let iterator = array.itertor()
        
        
        while iterator.hasNext() {
            print(iterator.next() ?? "");
        }
        
    }

}

