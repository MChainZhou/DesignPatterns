//
//  ConcreteMediator.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ConcreteMediator: Mediator {
    override func method() {
        self.colleagueA.action()
        self.colleagueB.action()
    }
}
