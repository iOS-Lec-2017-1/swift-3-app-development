//
//  ViewController.swift
//  string_count
//
//  Created by yoshiyuki oshige on 2016/08/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자 수를 센다
        let str:String = "文字가나다라마12345ABcde(^_^)"
        let num = str.characters.count
        print(num)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

