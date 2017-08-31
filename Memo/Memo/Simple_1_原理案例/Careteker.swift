//
//  Careteker.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//用于存储备忘录：数据库、文件、上传服务器等
class Careteker: NSObject {
    
    
    private var memo:Memo?

    
    //存档
    func write(memo:Memo) {
        self.memo = memo
    }
    
    //读档
    func read() -> Memo {
        return self.memo!
    }
}
