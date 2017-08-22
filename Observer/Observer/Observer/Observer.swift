//
//  Observer.swift
//  Observer
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//观察者(高度抽象的协议)
protocol Observer {
    func update(o:Observable,msg:Any?)
}
