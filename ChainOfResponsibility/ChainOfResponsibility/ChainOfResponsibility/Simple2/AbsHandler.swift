//
//  AbsHandler.swift
//  ChainOfResponsibility
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class AbsHandler: NSObject {
    
    var nextHandler:AbsHandler?
    
    final func handlerRequest(request:AbsRequest) {
        if getHandlerLevel() == request.getRequestLevel() {
            handler(request: request)
        }else{
            self.nextHandler?.handlerRequest(request: request)
        }
    }
    
    func getHandlerLevel() -> Int {
        return 0;
    }
    
    func handler(request:AbsRequest) {
        
    }
    
}
