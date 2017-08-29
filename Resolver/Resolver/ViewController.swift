//
//  ViewController.swift
//  Resolver
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sum = SimpleTest.interporet(expression:"1 - 2 + 3 + 4 + 5 - 6")
        print(sum)
        
    }

}

