//
//  TeacherModel_4.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TeacherModel_4: NSCopying {

    
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    
    func copy(with zone: NSZone? = nil) -> Any {
        return TeacherModel_4(name: self.name)
    }
    
}
