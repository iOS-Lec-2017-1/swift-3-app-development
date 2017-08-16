//
//  ViewController.swift
//  switch_fallthrough
//
//  Created by 유세라 on 2017. 1. 19..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        var abc:(a:Bool, b:Bool, c:Bool) = (false, false, false)
        // b인 경우를 시험합니다
        let fall = "b"
        switch fall { case "a":
            abc.a = true
            fallthrough
        case "b":
                abc.b = true
            fallthrough
        case "c":
                abc.c = true
            fallthrough
        default:
              print(abc)
        }
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

