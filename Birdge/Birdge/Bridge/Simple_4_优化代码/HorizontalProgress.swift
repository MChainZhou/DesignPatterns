//
//  HorizontalProgress.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class HorizontalProgress: BaseProgress {
    override func getRect() -> CGRect {
        return CGRect(x: 100, y: 100, width: 50, height: 20)
    }
    
    override func draw(view: UIView) {
        for index in 0..<self.sportCount {
            let layer = CAShapeLayer()
            layer.fillColor = UIColor.black.cgColor
            layer.strokeColor = UIColor.black.cgColor
            layer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 4, height: 4)).cgPath
            let x = CGFloat(index) * view.bounds.width / CGFloat(sportCount - 1)
            let y = view.bounds.height / 2.0
            layer.position = CGPoint(x: x, y: y)

        }
    }
}
