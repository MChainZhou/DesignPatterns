//
//  MacComputer.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//具体的接收者
class MacComputer: NSObject {
    func startUp() {
        print("Mac电脑开机了");
    }
    
    func shutdown() {
        print("Mac电脑关机了")
    }
}
