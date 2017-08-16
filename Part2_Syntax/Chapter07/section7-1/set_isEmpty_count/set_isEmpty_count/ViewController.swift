//
//  ViewController.swift
//  set_isEmpty_count
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let numSet:Set<Int> = [10, 20, 30, 40, 50]
        if numSet.isEmpty {
            print("numSet은 비었습니다")
        } else {
            print("numSet에는 값이 \(numSet.count)개 들어 있습니다.")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

