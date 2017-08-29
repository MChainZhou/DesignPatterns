//
//  ProgressView_4.swift
//  Birdge
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ProgressView_4: UIView {

    private var progressType = BaseProgress.PType.HORIZONTAL
    
    private var progressView:BaseProgress?
    
    init(frame: CGRect,type:BaseProgress.PType) {
        super.init(frame: frame)
        self.progressType = type
        self.initProgress()
    }
    
    func initProgress(){
        
        if self.progressType == BaseProgress.PType.HORIZONTAL {
            self.progressView = HorizontalProgress()
        }else{
            self.progressView = VerticalProgress()
        }
        
        self.progressView?.draw(view: self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
