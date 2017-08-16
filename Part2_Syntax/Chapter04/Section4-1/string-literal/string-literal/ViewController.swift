//
//  ViewController.swift
//  string-literal
//
//  Created by 유세라 on 2017. 1. 20..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let message = "헬로"
        var bird:String
        bird = "칼새(스위프트)"
        
        print(message)
        print(bird)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

