//
//  ViewController.swift
//  set_subtracting
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSet:Set<String> = ["사과", "귤", "감", "딸기"]
        let bSet:Set<String> = ["딸기", "수박", "귤", "바나나"]
        let cSet = aSet.subtracting(bSet)
        print(cSet)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

