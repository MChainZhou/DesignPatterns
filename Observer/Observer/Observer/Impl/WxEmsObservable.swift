//
//  WxEmsObservable.swift
//  Observer
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class WxEmsObservable: Observable {
    public var news:String?
    
    func setNews(n:String?) {
        if n != nil {
            if n == self.news {
                self.clearChanged()
            }else{
                self.setChanged()
            }
            
            self.news = n
        }
    }
    
    func notify() {
        self.notifyObservers(arg: news)
    }
}
