//
//  ViewController.swift
//  set_equal
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSet:Set<Int> = [5, 6, 7, 8]
        let bSet:Set<Int> = [7, 8, 5, 6]
        let cSet:Set<Int> = [4, 5, 6, 7]
        print(aSet == bSet) // true
        print(aSet != cSet) // true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

