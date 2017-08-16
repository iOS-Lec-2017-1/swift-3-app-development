//
//  ViewController.swift
//  string_remove
//
//  Created by yoshiyuki oshige on 2016/08/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str = "서울시 마포구 합정동 1-2-3"
        // str의 "서울시" 범위를 조사
        let result = str.range(of: "서울시")
        if let theRange = result {
            // result에 범위가 들어 있으면 범위에 해당하는 문자열을 삭제
            str.removeSubrange(theRange)
        }
        print(str)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

