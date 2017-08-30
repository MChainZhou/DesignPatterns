//
//  Colleague.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//抽象的类
class Colleague {
    var meditor:Mediator
    
    init(meditor:Mediator) {
        self.meditor = meditor
    }
    
    //
    func action() {
        
    }
    
}
