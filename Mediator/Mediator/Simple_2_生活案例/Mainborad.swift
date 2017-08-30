//
//  Mainborad.swift
//  Mediator
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Mainborad: ComputerMediator {
    private var cpu:CPU?
    private var displaycard:Displaycard?
    private var soundcard:Soundcard?
    private var cddevice:CDDevice?
    
    func setCPU(cpu:CPU) {
        self.cpu = cpu
    }
    
    func setdisplaycard(displaycard:Displaycard) {
        self.displaycard = displaycard
    }
    
    func setSoundcard(soundcard:Soundcard) {
        self.soundcard = soundcard
    }
    
    func setCDDevice(cddivece:CDDevice) {
        self.cddevice = cddivece
    }
    
    override func change(colleague: ComputerColleague) {
        if colleague == cddevice {
            self.handleCD(cddevice: colleague as! CDDevice)
        } else if colleague == cpu {
            self.handleCPU(cpu: colleague as! CPU)
        }

    }
    
    //CPU解析光盘数据
    private func handleCD(cddevice:CDDevice){
        self.cpu?.decodeData(data: cddevice.read())
    }
    
    //声卡和显卡播放
    private func handleCPU(cpu:CPU){
        self.soundcard?.soundPlay(data: cpu.getSoundData())
        self.displaycard?.videoPlay(data: cpu.getVideoData())
    }
}
