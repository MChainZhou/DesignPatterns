//
//  GamaraImpl.swift
//  Facede
//
//  Created by apple on 2017/8/30.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class GamaraImpl: GamaraProtocol {
    func open() {
        print("打开相机")
    }
    
    func takePicture() {
        print("开始拍照")
    }
    
    func close() {
        print("关闭相机")
    }
    
}
