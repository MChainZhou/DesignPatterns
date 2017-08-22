//
//  ViewController.swift
//  Template
//
//  Created by apple on 2017/8/22.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.path(forResource: "Test", ofType: ".mov")
        
        
        let avplayer = DefaultPlayer()
        avplayer.play(controller: self, frame: self.view.bounds, url: url!)
        avplayer.delegate = self
        
    }
    
    func playerCell(status: AVPlayerItemStatus?) {
        print("播放回调")
    }

}

