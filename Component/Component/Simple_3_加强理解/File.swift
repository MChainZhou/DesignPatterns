//
//  File.swift
//  Component
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class File: DirProtocol {
    var name: String
    var dirArray: Array<DirProtocol>
    
    init(name:String) {
        self.name = name
        dirArray = Array<DirProtocol>()
    }
    
    func addDir(dir: DirProtocol) {
        print("这是个文件，不能添加子结点")
    }
    
    func printDir() {
        print(self.name)
    }
    
    func removeDir(dir: DirProtocol) {
        print("这是个文件，没有可移除的子结点")
    }
    
    func clear() {
        print("这是个文件，没有子结点")
    }
    
    func getChildren(index: Int) -> DirProtocol? {
        print("这是个文件，没有子结点")
        return nil
    }
    
    func getName() -> String {
        return self.name
    }
    
}
