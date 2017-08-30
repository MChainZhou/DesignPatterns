//
//  Computer.swift
//  Facede
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class Computer: NSObject {
    var game:GameProtocol = GameImpl()
    var gamara:GamaraProtocol = GamaraImpl()
    
    func startGame() {
        self.gamara.open()
        self.game.start()
    }
    
    func takePicture() {
        self.gamara.takePicture()
    }
    
    func end() {
        self.gamara.close()
        self.game.end()
    }
    
    
    
}
