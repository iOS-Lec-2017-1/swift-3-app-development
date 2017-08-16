//
//  Game.swift
//  class_private
//


import Foundation

class Game {
    // 다른 클래스에서 접근 할 수 없다
    private var point = 0.0
    // 리드 온리
    private(set) var level = 0
    
    // 득점을 더한다
    func addPoint(value:Double) {
        point += value
        level =  Int(floor(point/3))
    }
    
}
