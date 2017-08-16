//
//  ViewController.swift
//  optional_default_var
//
//  Created by yoshiyuki oshige on 2016/08/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var count:Int?
        var price:Int
        
        price = 250 * (count ?? 2)
        print("\(price)원입니다.")
        
        count = 3
        price = 250 * (count ?? 2)
        print("\(price)원입니다.")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

