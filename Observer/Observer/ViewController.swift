//
//  ViewController.swift
//  Observer
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let observable = WxEmsObservable()
        
        observable.addObserver(o: AndyObserver())
        observable.addObserver(o: NickObserver())
        
        observable.setNews(n: "好消息！好消息！")
        observable.notify()
        observable.notify()
        
    }

}

