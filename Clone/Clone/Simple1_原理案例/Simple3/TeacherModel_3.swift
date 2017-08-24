//
//  TeacherModel_3.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TeacherModel_3: CloneProtocol {

    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    
    func clone() -> AnyObject? {
        return TeacherModel(name: self.name)
    }
}
