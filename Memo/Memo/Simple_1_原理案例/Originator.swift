//
//  2K17Originator.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


//负责创建备忘录
class Originator {
    var checkPoint:Int
    var skill:String
    
    init() {
        self.checkPoint = 1
        self.skill = "投篮"

    }
    
    //开始游戏
    func playGame() {
        print("游戏进度为第\(self.checkPoint)关")
        self.checkPoint += 1
        print("恭喜进入下一关")
        print("到达了第\(self.checkPoint)关")
    }
    
    //退出游戏
    func exit() {
        print("-------")
        print("当前游戏进度为第\(self.checkPoint)关")
        print("退出游戏")
        print("-------")
    }
    
    //游戏存档
    //存档游戏
    func createMemo() -> Memo {
        return Memo(checkPoint: checkPoint, skill: skill)
    }
    
    //恢复存档
    //恢复存档
    func restore(memo:Memo) {
        self.checkPoint = memo.checkPoint
        self.skill = memo.skill
    }
    
    func printString() {
        print("第\(checkPoint)关,技能:\(skill)")
    }
    
}
