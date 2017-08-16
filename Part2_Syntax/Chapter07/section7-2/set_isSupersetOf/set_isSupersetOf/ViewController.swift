//
//  ViewController.swift
//  set_isSupersetOf
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSet:Set<String> = ["a", "b", "c", "d"]
        let bSet:Set<String> = ["a", "c"]
        if aSet.isSuperset(of: bSet) {
            print("aSet는 bSet의 수퍼세트입니다")
        } else {
            print("aSet는 bSet의 수퍼세트는 아닙니다")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

