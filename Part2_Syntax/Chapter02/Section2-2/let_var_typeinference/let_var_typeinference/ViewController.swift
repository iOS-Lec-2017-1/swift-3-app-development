//
//  ViewController.swift
//  let_var_typeinference
//
//  Created by yoshiyuki oshige on 2016/07/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tax = 0.08
        var count = 0
        count = 1
        print(tax, count)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

