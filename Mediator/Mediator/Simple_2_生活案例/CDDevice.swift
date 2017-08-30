//
//  CDDevice.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
//具体的对象
class CDDevice: ComputerColleague {
    var data:String?
    
    func read() -> String {
        return self.data!
    }
    
    func laod(_ data:String = "视频数据,音频数据"){
        self.data = data
        
        self.mediator.change(colleague: self)
    }
    
}
