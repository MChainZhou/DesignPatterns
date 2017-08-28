//
//  Folder.swift
//  Component
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Folder: DirProtocol {

    var name: String
    var dirArray: Array<DirProtocol>
    
    init(name:String) {
        self.name = name
        dirArray = Array<DirProtocol>()
    }
    
    func printDir() {
        
        for item in self.dirArray {
            print(item.getName())
        }
        
        print(self.name)
    }
    
    func addDir(dir: DirProtocol) {
        self.dirArray.append(dir)
    }
    
    func removeDir(dir: DirProtocol) {
        self.dirArray.remove(at: self.dirArray.index(where: {$0.name == dir.name})!)
    }
    
    func clear() {
        self.dirArray.removeAll()
    }
    
    func getChildren(index: Int) -> DirProtocol? {
        return self.dirArray[index]
    }
    
    func getName() -> String {
        return self.name
    }
}
