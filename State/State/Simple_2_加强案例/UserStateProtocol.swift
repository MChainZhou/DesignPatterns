//
//  UserStateProtocol.swift
//  State
//
//  Created by apple on 2017/9/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit


protocol UserStateProtocol {
    //转发
    func forward(controller:UIViewController)
    //评论
    func comment(controller:UIViewController)
}
