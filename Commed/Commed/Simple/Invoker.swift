//
//  Invoker.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//请求者
class Invoker {
    var command:CommandProtocol?
    
    init(command:CommandProtocol) {
        self.command = command
    }
    
    func action() {
        self.command?.execute()
    }
    
}
