//
//  LoginUesrState.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class LoginUesrState: UserStateProtocol {
    func forward(controller: UIViewController) {
        print("转发")
        //具体的业务逻辑
    }
    
    func comment(controller: UIViewController) {
        print("评论")
        //具体的业务逻辑
    }
}
