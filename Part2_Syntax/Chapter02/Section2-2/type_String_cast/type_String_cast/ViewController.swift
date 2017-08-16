//
//  ViewController.swift
//  type_String_cast
//
//  Created by 유세라 on 2017. 1. 19..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let subject = "요리"
        let point = 82
        let result = subject + String(point) + "점"
        print(result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

