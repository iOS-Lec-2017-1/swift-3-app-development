//
//  ViewController.swift
//  set_isDisjointWith
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSet:Set<Int> = [5, 6, 7, 8]
        let bSet:Set<Int> = [1, 8, 2, 5]
        if aSet.isDisjoint(with: bSet) {
            print("aSet와 bSet에는 공통된 값이 1개도 없습니다")
        } else {
            print("aSet와 bSet에는 공통된 값이 있습니다")
            print(aSet.intersection(bSet))
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

