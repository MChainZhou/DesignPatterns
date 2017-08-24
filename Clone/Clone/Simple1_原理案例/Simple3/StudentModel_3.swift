//
//  StudentModel_3.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class StudentModel_3: CloneProtocol {

    var name:String
    var teachers:Array<TeacherModel_3>
    
    init(name:String,teachers:Array<TeacherModel_3>) {
        self.name = name
        self.teachers = teachers
    }
    
    func clone() -> AnyObject? {
        var newTeachers = [TeacherModel_3]()
        
        for teacher in self.teachers {
            newTeachers.append(teacher.clone() as! TeacherModel_3)
        }
        
        return StudentModel_3(name: self.name, teachers: newTeachers)
        
    }
}
