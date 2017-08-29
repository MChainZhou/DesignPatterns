//
//  ProgressView.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ProgressView: UIView {
    
    //原始进度条的类型
    public enum ProgressType: Int {
        case HORIZONTAL = 1
        case VERTICAL   = 2
    }
    
    private var propressType = ProgressType.HORIZONTAL
    private var sportCount = 5
    
    init(frame: CGRect,type:ProgressType) {
        super.init(frame: frame)
        self.propressType = type
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initPropress() {
        for index in 0..<self.sportCount {
            let layer = CAShapeLayer()
            layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
            layer.fillColor = UIColor.black.cgColor
            layer.strokeColor = UIColor.black.cgColor
            layer.path = UIBezierPath(ovalIn: layer.bounds).cgPath
            self.layer.addSublayer(layer)
            
            if self.propressType == .HORIZONTAL {
                let x = CGFloat(index) * self.bounds.width / CGFloat(self.sportCount - 1);
                let y = self.bounds.height / 2.0
                layer.position = CGPoint(x: x, y: y)
                
            }else{
                let x = self.bounds.width / 2.0
                let y = CGFloat(index) * self.bounds.height / CGFloat(sportCount - 1)
                layer.position = CGPoint(x: x, y: y)

            }
            
        }
    }

}
