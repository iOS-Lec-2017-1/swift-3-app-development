//
//  ViewController.swift
//  string_predecessor
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
        // 마지막 문자의 다음 인덱스
        var index = str.endIndex
        // 인덱스를 하나 앞으로 갑니다
        index = str.index(before: index)
        let chr = str[index]
        print(chr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

