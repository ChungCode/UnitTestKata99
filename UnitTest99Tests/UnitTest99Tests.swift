//
//  UnitTest99Tests.swift
//  UnitTest99Tests
//
//  Created by 鍾家豪 on 2018/7/24.
//  Copyright © 2018年 鍾家豪. All rights reserved.
//

import XCTest
import UnitTest99

class UnitTest99Tests: XCTestCase {
    
    var game: C99Game!

    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = C99Game()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOneInput() {
        do {
            var OutPutNum = 0;
            OutPutNum =  game.InputNum(of: 1)
            XCTAssert(OutPutNum == 1, "您輸入數字為 \(OutPutNum)")
        } catch {
            XCTAssert(false, "不應該出現")
        }
    }
    
    func testZerOInput() {
        do {
            var OutPutNum = 0;
            OutPutNum =  game.InputNum(of: 0)
            XCTAssert(OutPutNum == -1, "輸入數字並非為系統要求 \(OutPutNum)")
        } catch {
            XCTAssert(false, "不應該出現")
        }
    }
    
    func testRandomTenInput() {
        do {
            var OutPutNum = Int((arc4random()%100)+10)
            OutPutNum =  game.InputNum(of: 0)
            XCTAssert(OutPutNum == -1, "輸入數字並非為系統要求 \(OutPutNum)")
        } catch {
            XCTAssert(false, "不應該出現")
        }
    }
    
    func testRandomInput() {
        do {
            var OutPutNum = Int((arc4random()%9)+1)
            OutPutNum =  game.InputNum(of: 0)
            XCTAssert(OutPutNum == -1, "輸入數字並非為系統要求 \(OutPutNum)")
        } catch {
            XCTAssert(false, "不應該出現")
        }
    }
}
