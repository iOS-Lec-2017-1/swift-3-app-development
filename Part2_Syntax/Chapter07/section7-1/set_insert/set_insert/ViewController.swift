//
//  ViewController.swift
//  set_insert
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var numSetA:Set<Int> = []
        numSetA.insert(3)
        numSetA.insert(5)
        numSetA.insert(7)
        numSetA.insert(3)
        print(numSetA)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

