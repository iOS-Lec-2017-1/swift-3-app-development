//
//  ViewController.swift
//  set_contains
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lunchSet:Set = ["커리", "난", "차이 티"]
        let member = "차이 티"
        if lunchSet.contains(member) {
            print("세트에는 \(member)가 포함되어 있습니다.")
        } else {
            print("세트에는 \(member)는 포함되지 않습니다.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

