//
//  ViewController.swift
//  func_greeting
//
//  Created by 유세라 on 2017. 1. 19..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func greeting(who:String = "고객님") -> String {
        
        return who + ",안녕하세요"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        // 인수를 준 경우
        let greeting1 = greeting(who: "지용씨")
        print(greeting1)
        
        // 인수를 생략한 경우
        let greeting2 = greeting()
        print(greeting2)
        

    }
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

