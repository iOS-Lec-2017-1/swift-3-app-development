//
//  ViewController.swift
//  type_String_cast
//
//  Created by yoshiyuki oshige on 2016/07/24.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let subject = "이과"
        let point = 82
        let result = subject + String(point) + "점"
        print(result)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

