//
//  ViewController.swift
//  struct_mutating
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 선 구조체
    struct Line {
        // 양 끝 좌표
        var p1:Point
        var p2:Point
        
        // 양 끝을 움직여 선을 평행이동한다
        mutating func move(h:Double, v:Double){
            p1.x += h
            p1.y += v
            p2.x += h
            p2.y += v
        }
    }
    
    // 점 구조체
    struct Point {
        var x:Double
        var y:Double
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 양 끝 2점
        let point1 = Point(x: 100, y: 100)
        let point2 = Point(x: 300, y: 200)
        // 2점을 연결하는 직선
        var theLine = Line(p1: point1, p2: point2)
        // 좌표 확인
        print("이동 전의 p1 \(theLine.p1)")
        print("이동 전의 p2 \(theLine.p2)")
        print("--------")
        
        // 평행이동한다
        theLine.move(h: 50, v: 60)
        // 좌표 확인
        print("이동 후의 p1 \(theLine.p1)")
        print("이동 후의 p2 \(theLine.p2)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

