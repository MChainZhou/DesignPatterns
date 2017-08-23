//
//  TianMaoIterator.swift
//  Iterator
//
//  Created by apple on 2017/8/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TianMaoIterator: OrderIterator<Array<OrderModel>> {
    init(array:Array<OrderModel>) {
        super.init(obj: array)
    }
    
    override func next() -> OrderModel? {
        if hasNext() {
            let order = self.obj?[self.index]
            
            self.index += 1
            
            return order
            
        }
        
        return nil
    }
    
    override func hasNext() -> Bool {
        return self.index < (self.obj?.count)!
    }
}
