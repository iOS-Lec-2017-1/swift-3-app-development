//
//  ViewController.swift
//  range_substringFrom
//
//  Created by yoshiyuki oshige on 2016/08/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "서울시 마포구 합정동 1-2-3"
        // tr의 "서울시" 범위를 조사
        let result = str.range(of: "서울시")
        if let theRange = result {
            // result에 범위가 들어 있으면 범위 뒤에 있는 문자열을 읽음
            let afterStr = str.substring(from: theRange.upperBound)
            print(afterStr)
        } else {
            print(str)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

