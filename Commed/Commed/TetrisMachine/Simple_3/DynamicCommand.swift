//
//  DynamicCommand.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//动态命令

class DynamicCommand:TMCommandProtocol {
    //命令的接收者
    private var receiver:TetrisMachine?
    private var instruction:(TetrisMachine)->Void
    
    init(receiver:TetrisMachine,instruction:@escaping (TetrisMachine)->Void) {
        self.receiver = receiver
        self.instruction = instruction
    }
    
    func execute() {
        self.instruction(self.receiver!)
    }
}
