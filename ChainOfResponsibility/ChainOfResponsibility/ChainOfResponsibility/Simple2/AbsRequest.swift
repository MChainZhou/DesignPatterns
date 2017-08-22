//
//  AbsRequest.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class AbsRequest: NSObject {
    private var obj:String?
    
    init(obj:String) {
        super.init()
        self.obj = obj
    }
    
    func getRequestLevel() -> Int {
        return 0;
    }
    
    func getContent() -> String? {
        return self.obj
    }
    
    
}
