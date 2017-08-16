//
//  ViewController.swift
//  optional-binding_while
//
//  Created by yoshiyuki oshige on 2016/08/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str:String? = "★☆"
        var repeatString:String = ""
        var i = 0
        
        // str이 nil이 아니면 업랩해 stamp에 대입해서 연결한다
        while let stamp = str {
            repeatString += stamp
            i += 1
            if(i >= 10){
                break
            }
        }
        print(repeatString)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

