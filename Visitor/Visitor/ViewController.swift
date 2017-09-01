//
//  ViewController.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //案例一：原理案例-测试
        let report = EmployeeBusinessReport()
        let cto = CTOVisitor(name: "柚芒子")
        report.showReport(visitor: cto)
        let ceo = CEOVisitor(name: "你大爷")
        report.showReport(visitor: ceo)
    }

    


}

