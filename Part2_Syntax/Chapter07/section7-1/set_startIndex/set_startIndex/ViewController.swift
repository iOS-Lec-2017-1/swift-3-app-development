//
//  ViewController.swift
//  set_startIndex
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorSet:Set = ["yellow", "blue", "red", "green"]
        // 값의 나열 확인
        print(colorSet)
        // 세트의 처음 값
        print(colorSet[colorSet.startIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

