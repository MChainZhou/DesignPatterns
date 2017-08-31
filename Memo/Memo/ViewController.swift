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
        // 案例一
        let or = Originator()
        or.playGame()
        
        let memo = or.createMemo()
        
        //上传服务器、存储数据路操作
        let care = Careteker()
        care.write(memo: memo)
        or.exit()
        
        //恢复存档
        or.restore(memo:memo)
        or.printString()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

