//
//  ViewController.swift
//  array_first_last
//
//  Created by yoshiyuki oshige on 2016/08/06.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let emptyArray = [Int]()
        let abcArray = ["a","b","c","d"]
        print("맨 앞은 \(emptyArray.first), 맨 뒤는 \(emptyArray.last)")
        print("맨 앞은 \(abcArray.first!), 맨 뒤는 \(abcArray.last!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

