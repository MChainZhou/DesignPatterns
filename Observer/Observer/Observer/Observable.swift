//
//  Observable.swift
//  Observer
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

//被观察者
class Observable: NSObject {
    //数组：所有的观察者
    private var obs:Array<Observer>?
    //控制消息的发送：默认不发送
    private var changed = false
    
    
    override init() {
        super.init()
        self.obs = Array<Observer>()
    }
    
    //注册观察者
    func addObserver(o:Observer) {
        self.obs?.append(o)
    }
    
    //取消注册观察者
    func delegateObserver(o:Observer){
        self.obs?.removeLast()
    }
    
    //取消所有订阅者
    func delegateAll() {
        self.obs?.removeAll()
    }
    
    //通知所有观察者
    func notifyObserver() {
        self.notifyObservers(arg: nil)
    }
    
    func notifyObservers(arg:Any?) {
        if !changed {
            return;
        }
        
        clearChanged()
        
        //发送通知
        self.obs?.forEach({ (o) in
            o.update(o: self, msg: arg)
        })
        
    }
    
    //设置消息的发送
    func setChanged() {
        self.changed = true
    }
    
    //取消消息的发送
    func clearChanged() {
        changed = false
    }
    
    func hasChanged() -> Bool {
        return self.changed
    }
    
    //观察者的数量
    func observerCount() -> Int {
        return (self.obs?.count)!
    }
}
