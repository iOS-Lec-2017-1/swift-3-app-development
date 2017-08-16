//
//  ViewController.swift
//  set_isSubsetOf
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
        if bSet.isSubset(of: aSet) {
            print("bSet은 aSet의 서브셋입니다")
        } else {
            print("bSet는 aSet의 서브셋이 아닙니다")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

