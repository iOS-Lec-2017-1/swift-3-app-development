//
//  ViewController.swift
//  string_rangeOf
//
//  Created by yoshiyuki oshige on 2016/08/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 문자열을 검색한다
        
        let str1 = "서울시양천구"
        let str2 = "서울"
        if str1.contains(str2) {
            print("\(str1)에는\(str2)가 포함되어 있습니다.")
        } else {
            print("\(str1)에는\(str2)가 포함되어 있지 않습니다.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

