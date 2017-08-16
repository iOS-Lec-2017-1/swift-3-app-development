//
//  MyGame.swift
//  class_protocol
//

import Foundation

class MyGame:GameProtocol {
    
    private var total = 0
    
    // 프로토콜에 따라 구현하는 프로퍼티
    var gamePoint:Int {
        get {
            return total
        }
    }
    
    // 프로토콜에 따라 구현하는 메서드
    func hit() {
        total += 10
        print("쳤습니다.+10")
    }
    
    func miss() {
        total /= 2
        print("실수！ 절반")
    }
}
