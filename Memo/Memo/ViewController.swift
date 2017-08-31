//
//  ViewController.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // 案例一
//        let or = Originator()
//        or.playGame()
//        
//        let memo = or.createMemo()
//        
//        //上传服务器、存储数据路操作
//        let care = Careteker()
//        care.write(memo: memo)
//        or.exit()
//        
//        //恢复存档
//        or.restore(memo:memo)
//        or.printString()
        
        //案例二:
//        let receiver = BankAccountReceiver()
//        
//        receiver.addEntry(name: "张三", amount: 10000, time: "2017-04-23")
//        receiver.addEntry(name: "李四", amount: 102000, time: "2017-05-24")
//        let command = receiver.addEntry(name: "王五", amount: 100300, time: "2016-12-03")
//        receiver.printEntries()
//        command.excute()
//        print("----------华丽的分割线---------")
//        receiver.printEntries()
        
        //命令模式只能一个一个的撤销而且是有顺序的
        //队列数据结构、栈结构用命令模式
        //随机顺序的删除用备忘录模式
        
//        let o = BankAccountOriginator()
//        o.addEntry(name: "Dream", amount: 100, time: "2017-06-19")
//        o.addEntry(name: "Andy", amount: 10000, time: "2017-06-19")
//        
//        //备份
//        let memo = o.createMemo()
//        
//        o.addEntry(name: "肥牛哥", amount: 10000, time: "2017-06-19")
//        o.addEntry(name: "水牛哥", amount: 10000, time: "2017-06-19")
//        o.addEntry(name: "野牛哥", amount: 10000, time: "2017-06-19")
//        o.addEntry(name: "牦牛哥", amount: 10000, time: "2017-06-19")
//        o.printEntries()
//        
//        //还原
//        o.applyMemo(memo: memo)
//        
//        o.printEntries()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

