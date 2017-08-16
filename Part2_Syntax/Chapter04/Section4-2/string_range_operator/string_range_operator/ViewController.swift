//
//  ViewController.swift
//  string_range_operator
//
//  Created by 유세라 on 2017. 1. 20..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str = "Swift입문노트"
        let zero = str.startIndex
        let start = str.index(zero, offsetBy: 3)
        let end = str.index(zero, offsetBy: 6)
        // 문자열을 꺼낸다
        let str1 = str[start...end]
        let str2 = str[start..<end]
        print((str1, str2))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

