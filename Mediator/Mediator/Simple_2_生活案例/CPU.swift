//
//  CPU.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
//具体的对象
class CPU: ComputerColleague {

    private var videoData:String?
    private var soundData:String?
    //获取视频数据
    func getVideoData() -> String {
        return self.videoData!
    }
    
    //获取音频数据
    func getSoundData() -> String {
        return self.soundData!
    }
    
    //解析数据方法
    func decodeData(data:String) {
        let array = data.characters.split(separator: ",").map(String.init)
        self.videoData = array[0]
        self.videoData = array[1]
        
        self.mediator.change(colleague: self)
    }
}
