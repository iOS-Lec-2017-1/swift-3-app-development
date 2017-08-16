//
//  ViewController.swift
//  if_else_if_statement
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 0 ～ 100의 난수를 만든다
        let score = arc4random_uniform(101)
        if score < 30 {
            print("분발하세요")
        } else if score < 80 {
            print("합격입니다.")
        } else {
            print("굉장해요！")
        }
        print("\(score)점입니다.")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

