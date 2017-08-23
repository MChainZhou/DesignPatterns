//
//  TMLeftCommand.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//向左的命令
class TMLeftCommand: TMCommandProtocol {

    var tm:TetrisMachine?
    
    
    init(tm:TetrisMachine) {
        self.tm = tm
    }
    
    func execute() {
        self.tm?.toLeft()
    }
}
