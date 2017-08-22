//
//  Handler.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Handler: NSObject {
    var nextHandler:Handler?
    
    func handlerRequest(obj:String?) {
        print("抽象处理类\(obj!)")
    }
    
}
