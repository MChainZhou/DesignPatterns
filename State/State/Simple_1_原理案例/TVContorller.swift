//
//  TVContorller.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


class TVContorller {
    private var state:StateProtocol?
    
    func setState(state:StateProtocol) {
        self.state = state
    }
    
    func powerOn()  {
        setState(state: PowerOnState())
        print("开机了")
    }
    
    func powerOff() {
        setState(state: PowerOffState())
        print("关机了")
    }
    
    func nextChannel() {
        self.state?.nextChannel()
    }
    
    func prevChannel() {
        self.state?.prevChannel()
    }
    
    func turnUp() {
        self.state?.turnUP()
    }
    
    func turnDown() {
        self.state?.turnDown()
    }
}
