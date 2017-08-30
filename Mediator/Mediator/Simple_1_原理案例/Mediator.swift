//
//  Mediator.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//抽象的中介者
class Mediator {
    var colleagueA:Colleague
    var colleagueB:Colleague
    
    init(colleagueA:Colleague,colleagueB:Colleague) {
        self.colleagueA = colleagueA
        self.colleagueB = colleagueB
    }
    
    //业务逻辑
    func method() {
        
    }
}
