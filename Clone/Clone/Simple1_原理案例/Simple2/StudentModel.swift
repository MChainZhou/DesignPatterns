//
//  StudentModel.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class StudentModel: CloneProtocol {
    var name:String
    var teachers:Array<TeacherModel>
    
    init(name:String,teachers:Array<TeacherModel>) {
        self.name = name
        self.teachers = teachers
    }
    
    func clone() -> AnyObject? {
        return StudentModel(name: self.name, teachers: self.teachers)
    }
    
    
}
