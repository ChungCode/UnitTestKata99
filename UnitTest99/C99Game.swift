//
//  C99Game.swift
//  UnitTest99
//
//  Created by 鍾家豪 on 2018/7/24.
//  Copyright © 2018年 鍾家豪. All rights reserved.
//

import Foundation

class C99Game {
    func InputNum(of num: Int) -> Int {
        if num > 10 || num < 1 {
                return -1
        }
        return num
    }
    
    func InputNum99(of num: Int) -> Int {
        if num > 99 || num < 1 {
            return -1
        }
        return num
    }
}
