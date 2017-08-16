//
//  ViewController.swift
//  if_or
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let math = arc4random_uniform(101)
        let english = arc4random_uniform(101)
        // 수학 또는 영어 둘 중 하나가 60점 이상일 때 합격
        if (math >= 60)||(english >= 60){
            print("축하합니다! 합격")
        } else {
            print("안타깝지만, 불합격")
        }
        print("수학 \(math)、영어 \(english)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

