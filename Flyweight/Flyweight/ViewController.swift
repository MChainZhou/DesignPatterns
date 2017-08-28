//
//  ViewController.swift
//  Flyweight
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...100 {
            let factory = TiketFactory.ticket(form: "北京", to: "上海")
            factory.showTicketInfo(bunk:"商务座")
            
        }
        
    }




}

