//
//  ViewController.swift
//  hex_decimal_RGB
//
//  Created by yoshiyuki oshige on 2016/07/24.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 16진수 RRGGBB를 R, G, B로 분해
        let RGB: UInt32 = 0x40E0D0 // turquoise(64,224,208)
        let red = (RGB & 0xFF0000) >> 16
        let green = (RGB & 0x00FF00) >> 8
        let blue = RGB & 0x0000FF
        print("red \(red), green \(green), blue \(blue)")
        // 배경색에 설정
        let R = CGFloat(red)/255
        let G = CGFloat(green)/255
        let B = CGFloat(blue)/255
        view.backgroundColor = UIColor(red:R,green:G,blue:B,alpha:1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

