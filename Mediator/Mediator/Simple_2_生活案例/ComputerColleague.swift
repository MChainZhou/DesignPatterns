//
//  Compotercolleague.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//抽象对象
class ComputerColleague: NSObject {
    //持有中介者对象
    var mediator:ComputerMediator
    init(mediator: ComputerMediator) {
        self.mediator = mediator
    }
}
