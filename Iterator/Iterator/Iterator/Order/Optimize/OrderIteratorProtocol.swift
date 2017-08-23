//
//  OrderIteratorProtocol.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import Foundation


protocol OrderIteratorProtocol {
    
    func next() -> OrderModel?
    
    func hasNext() -> Bool
}
