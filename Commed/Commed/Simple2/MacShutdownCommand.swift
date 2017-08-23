//
//  MacShutdownCommand.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//具体的命令
class MacShutdownCommand: ComputerCommand {

    var computer:MacComputer
    
    init(computer:MacComputer) {
        self.computer = computer
    }
    
    func execute() {
        self.computer.shutdown()
    }
}
