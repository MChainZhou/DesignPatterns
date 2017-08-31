//
//  OriginatorProtocol.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

protocol OriginatorProtocol {
    //创建备忘录
    func createMemo()->MemoProtocol
    //修改备忘录(恢复指定状态)
    func applyMemo(memo:MemoProtocol)
}
