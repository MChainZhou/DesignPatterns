//
//  BaseProgress.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class BaseProgress {
    //原始进度条的类型
    public enum PType : Int {
        //水平
        case HORIZONTAL = 1
        //垂直
        case VERTICAL = 2
    }
    
    public let sportCount = 5
    
    func getRect() -> CGRect {
        return CGRect.zero
    }
    
    //绘制不同类型的进度条
    func draw(view:UIView) {
        
    }
}
