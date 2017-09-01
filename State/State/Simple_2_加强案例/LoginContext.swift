//
//  LoginContext.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class LoginContext {
    private static let loginContext = LoginContext()
    
    private var state:UserStateProtocol?
    
    init() {
        
    }
    
    class func getInstance() -> LoginContext{
        return loginContext
    }
    
    func setState(state:UserStateProtocol) {
        self.state = state
    }
    
    func forward(controller:UIViewController) {
        self.state?.forward(controller: controller)
    }
    
    func comment(controller:UIViewController)  {
        self.state?.comment(controller: controller)
    }
    
    
}
