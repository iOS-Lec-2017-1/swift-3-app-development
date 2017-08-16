//
//  ViewController.swift
//  optional_unwrap
//
//  Created by 유세라 on 2017. 1. 22..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        let msg:String? = "헬로"
        let newMsg = msg! + " 월드" // msg를 언랩하는 print(newMsg)    
        print(newMsg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

