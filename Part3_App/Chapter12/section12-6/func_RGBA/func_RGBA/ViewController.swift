//
//  ViewController.swift
//  func_RGBA
//
//  Created by yoshiyuki oshige on 2016/08/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // RGBA(255,255,255,1)에서 UIColor를 만든다
    func RGBA(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
        // 0〜1로 환산한다
        let r = red/255.0
        let g = green/255.0
        let b = blue/255.0
        let rgba = UIColor(red: r, green: g, blue: b, alpha: alpha)
        return rgba
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 색을 만든다
        let color = RGBA(red: 100, green: 255, blue: 200, alpha: 1)
        // 배경색을 지정한다
        self.view.backgroundColor = color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

