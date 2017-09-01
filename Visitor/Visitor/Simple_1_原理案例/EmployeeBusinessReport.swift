//
//  EmployeeBusinessReport.swift
//  Visitor
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class EmployeeBusinessReport {
    private var br = Array<StaffProtocol>()
    
    init() {
        self.br.append(Engineer(name: "工程师-张三"))
        self.br.append(Manager(name: "项目经理-李四"))
        self.br.append(Engineer(name: "工程师-王五"))
        self.br.append(Engineer(name: "工程师-赵六"))
        self.br.append(Engineer(name: "工程师-钱七"))
        self.br.append(Engineer(name: "工程师-郑八"))
    }
    
    //显示员工报表
    func showReport(visitor:VisitorProtocol) {
        for staff in self.br {
            staff.accept(visitor: visitor)
        }
    }
}
