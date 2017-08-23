//
//  Operation_3.swift
//  Commed
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Operation_3: NSObject {
    private var tm:TetrisMachine?
    
    private var commandArray = Array<TMCommandProtocol>()
    
    init(tm:TetrisMachine) {
        self.tm = tm
    }
    
    func toLeft() {
        
        self.addCommand(method: TetrisMachine.toLeft)
        self.tm?.toLeft()
    }
    
    func toRight() {
        self.addCommand(method: TetrisMachine.toRight)
        self.tm?.toLeft()
    }
    
    func fastToButtom() {
        self.addCommand(method: TetrisMachine.fastToButtom)
        self.tm?.fastToButtom()
    }
    
    func transform() {
        self.addCommand(method: TetrisMachine.transform)
        self.tm?.transform()
    }
    
    private func addCommand(method:@escaping (TetrisMachine)->(Void)->Void){
        
        
        self.commandArray.append(DynamicCommand(receiver: self.tm!) { (tetrisMachine) in
            method(tetrisMachine)()
        })
    }
    
    //一个个撤销
    //返回上一步
    //返回上一步：从数组最后一个元素开始
    func undo(){
        if self.commandArray.count > 0 {
            print("撤销了以下操作：")
            //打印这句话(你不知道撤销那一步：打印出来)
            self.commandArray.removeLast().execute()
            //保持数据库，保持文件等等...
        }
    }
    
    //撤销所有
    func undoAll(){
        for command in self.commandArray {
            command.execute()
        }
        self.commandArray.removeAll()
    }
    
    //恢复执行
    func recover() {
        for command in self.commandArray {
            command.execute()
        }
    }

}
