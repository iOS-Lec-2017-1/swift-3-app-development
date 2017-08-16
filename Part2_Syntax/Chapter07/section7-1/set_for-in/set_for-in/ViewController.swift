//
//  ViewController.swift
//  set_for-in
//
//  Created by yoshiyuki oshige on 2016/08/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numSet:Set<Double> = [3.2, 5.8, 1.4, 9.6, 5.5, 2,7]
        // nuSet에서 값이 작은 순으로 꺼낸다
        for num in numSet.sorted() {
            print(num, terminator: "점,")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

