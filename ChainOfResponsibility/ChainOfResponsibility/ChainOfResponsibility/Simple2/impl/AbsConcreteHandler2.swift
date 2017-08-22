//
//  AbsConcreteHandler2.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class AbsConcreteHandler2: AbsHandler {
    override func getHandlerLevel() -> Int {
        return 2;
    }
    
    override func handler(request: AbsRequest) {
        print("当前处理的AbsConcreteHandler2")
        print("处理的请求是\(request.getContent()!)")
    }
}
