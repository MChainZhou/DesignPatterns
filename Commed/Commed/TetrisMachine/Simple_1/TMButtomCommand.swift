//
//  TMButtomCommand.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TMButtomCommand: TMCommandProtocol {

    
    var tm:TetrisMachine?
    
    init(tm:TetrisMachine) {
        self.tm = tm
    }
    
    
    func execute() {
        self.tm?.fastToButtom()
    }
}
