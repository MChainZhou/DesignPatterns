//
//  DefaultPlayer.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import AVFoundation

//默认播放器
class DefaultPlayer: TemplateAVPlayer {
    private var player:AVPlayer?
    private var playerItem:AVPlayerItem?
    
    override func create(url: String) {
        
        self.playerItem = AVPlayerItem(url: URL(fileURLWithPath: url));
        self.player = AVPlayer(playerItem: self.playerItem)
    }
    
    override func prepare(controller: UIViewController, frame: CGRect) {
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = frame
        controller.view.layer.addSublayer(playerLayer);
        
        NotificationCenter.default.addObserver(self, selector: #selector(stop), name: .AVPlayerItemDidPlayToEndTime, object: nil)
        
        self.playerItem?.addObserver(self, forKeyPath: "status", options: .new, context: nil)
        
    }
    
    override func play() {
        self.player?.play()
    }
    
    override func puase() {
        self.player?.pause()
    }
    
    override func stop() {
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        guard object as? AVPlayerItem != nil else {
            return
        }
        
        if keyPath == "status" {
            self.delegate?.playerCell(status: self.playerItem?.status)
            
            if self.playerItem?.status == .failed {
                print("播放错误")
            }else if (self.playerItem?.status == .unknown) {
                print("未知错误")
            }else if (self.playerItem?.status == .readyToPlay) {
                print("播放正常")
            }
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        
        self.playerItem?.removeObserver(self, forKeyPath: "status")
    }
}
