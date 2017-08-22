//
//  NickObserver.swift
//  Observer
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class NickObserver: NSObject,Observer {
    func update(o: Observable, msg: Any?) {
        print("Nick同学收到了这个通知\(String(describing: msg))");
    }
}
