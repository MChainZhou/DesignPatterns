//
//  LogoutUserState.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class LogoutUserState: UserStateProtocol {
    func forward(controller: UIViewController) {
        self.toController(controller: controller)
    }
    
    func comment(controller: UIViewController) {
        self.toController(controller: controller)
    }
    
    private func toController(controller:UIViewController){
        //没有登录跳转到登录界面
    }
}
