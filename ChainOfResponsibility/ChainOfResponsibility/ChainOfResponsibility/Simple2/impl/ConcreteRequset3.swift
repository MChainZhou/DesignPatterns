//
//  ConcreteRequset3.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ConcreteRequset3: AbsRequest {
    override func getRequestLevel() -> Int {
        return 3;
    }
}
