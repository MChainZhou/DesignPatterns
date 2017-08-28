//
//  DirProtocol.swift
//  Component
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

protocol DirProtocol {
    //属性
    var name:String{get}
    var dirArray:Array<DirProtocol>{get}
    
    //抽象方法
    func printDir()
    func addDir(dir:DirProtocol)
    func removeDir(dir:DirProtocol)
    func getChildren(index:Int)->DirProtocol?
    func clear()
    func getName() -> String
}
