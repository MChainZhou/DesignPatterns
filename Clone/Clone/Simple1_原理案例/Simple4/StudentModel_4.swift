//
//  StudentModel_4.swift
//  Clone
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class StudentModel_4: NSCopying {

    
    var name:String
    var teachers:Array<TeacherModel_4>
    
    
    init(name:String,teachers:Array<TeacherModel_4>) {
        self.name = name
        self.teachers = teachers
    }
    
    
    
    func copy(with zone: NSZone? = nil) -> Any {
        var newTeachers = [TeacherModel_4]()
        for teacher in teachers {
            newTeachers.append(teacher.copy() as! TeacherModel_4)
        }
        
        return StudentModel_4(name: self.name, teachers: newTeachers)
    }

}
