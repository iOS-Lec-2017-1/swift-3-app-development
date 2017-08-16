//
//  ViewController.swift
//  index_before
//
//  Created by yoshiyuki oshige on 2016/08/04.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 마지막 문자를 꺼냅니다.
        
        let str = "Swift입문노트"
        // 맨 뒤의 인덱스
        var index = str.endIndex
        // 인덱스를 하나 앞으로 이동합니다
        index = str.index(before: index)
        let chr = str[index]
        print(chr)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


