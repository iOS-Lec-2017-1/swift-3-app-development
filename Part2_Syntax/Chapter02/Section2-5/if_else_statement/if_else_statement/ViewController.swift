//
//  ViewController.swift
//  if_else_statement
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 득점에 따라서 합격 불합격 처리를 분기한다
        // 0 ～ 100의 난수를 만든다
        let score = arc4random_uniform(101)
        if score >= 60 {
            print("축하합니다! 합격입니다.")
        } else {
            print("안타깝지만, 불합격입니다.")
        }
        print("\(score)점입니다.")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

