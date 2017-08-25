//
//  ViewController.swift
//  Component
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootView = Composite(name: "UIView")
        let button = Composite(name: "UIButton")
        
        let label = Composite(name: "UILabel")
        let leaf = Composite(name: "MyView")
        
        //添加叶子结点
        label.addChild(child: leaf)
        rootView.addChild(child: button)
        rootView.addChild(child: label)
        
        rootView.doSomething()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

