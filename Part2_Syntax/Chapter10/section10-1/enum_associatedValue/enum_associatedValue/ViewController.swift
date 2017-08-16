//
//  ViewController.swift
//  enum_associatedValue
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 패턴의 종류
    enum Pattern {
        case Monotone(_:PColor)
        case Border(color1:PColor, color2:PColor)
        case Dots(base:PColor, dot1:PColor, dot2:PColor)
    }
    
    // 패턴에서 사용할 수 있는 색
    enum PColor:String {
        case red = "빨간색"
        case green = "녹색"
        case yellow = "노란색"
        case white = "흰색"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셔츠 패턴을 만든다
        let shirt1 = Pattern.Monotone(.red)
        let shirt2 = Pattern.Border(color1: .white, color2: .red)
        let shirt3 = Pattern.Dots(base: .yellow, dot1: .white, dot2: .green)
        
        // 만든 값을 패턴으로 분류한다
        let patternList = [shirt1, shirt2, shirt3]
        
        for thePattern in patternList {
            switch thePattern {
            case .Monotone(let c):
                print("\(c.rawValue) 무지")
            case .Border(let c1, let c2):
                print("\(c1.rawValue)와 \(c2.rawValue) 보더")
            case let .Dots(base, dot1, dot2):
                let bColor = base.rawValue
                let dc1 = dot1.rawValue
                let dc2 = dot2.rawValue
                print("\(bColor)외에 \(dc1)와 \(dc2) 도트")
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

