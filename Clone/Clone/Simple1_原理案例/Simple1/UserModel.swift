//
//  UserModel.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class UserModel: CloneProtocol {
    var name:String?
    var sex:String?
    
    init(name:String,sex:String) {
        self.name = name
        self.sex = sex
    }
    
    func clone()->AnyObject? {
        return UserModel(name: self.name!, sex: self.sex!)
    }
}
