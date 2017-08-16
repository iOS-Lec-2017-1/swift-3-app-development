//
//  ViewController.swift
//  if_statement
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 80점이상 일때 [굉장해요!]
        let  score = 85
        if score >= 80 {
            print("굉장해요！ ")
        }
        print("\(score)점입니다.")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

