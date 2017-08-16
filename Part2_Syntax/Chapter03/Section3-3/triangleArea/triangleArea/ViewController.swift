//
//  ViewController.swift
//  triangleArea
//
//  Created by yoshiyuki oshige on 2016/07/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 삼각형 면적을 구하는 함수
    func triangleArea(_ width:Double, _ height:Double) -> Double {
        let result = width * height / 2
        return result
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 삼각형 면적
        let area = triangleArea(30, 16.5)
            print(area)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

