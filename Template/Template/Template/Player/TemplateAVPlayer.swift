//
//  TemplateAVPlayer.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TemplateAVPlayer: NSObject {
    
    var delegate:AVPlayerDelegate?
    
    //模版方法
    final func play(controller:UIViewController,frame:CGRect,url:String){
        self.create(url: url)
        self.prepare(controller: controller, frame: frame)
        self.play()
    }
    
    //创建播放器
    func create(url:String) {
        
    }
    
    //准备播放器
    func prepare(controller:UIViewController,frame:CGRect)   {
        
    }
    
    //播放
    func play() {
        
    }
    
    //暂停
    func puase(){
        
    }
    
    //停止
    func stop() {
        
    }
    
}
