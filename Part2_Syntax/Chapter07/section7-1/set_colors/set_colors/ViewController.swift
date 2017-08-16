//
//  ViewController.swift
//  set_colors
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 세트를 만든다
        let colorSetA:Set<String> = ["red", "green", "blue"]
        let colorSetB:Set = ["yellow", "pink", "green"]
        
        print(colorSetA)
        print(colorSetB)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

