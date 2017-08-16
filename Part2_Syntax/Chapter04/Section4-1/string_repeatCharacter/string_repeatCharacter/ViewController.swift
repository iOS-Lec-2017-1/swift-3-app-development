//
//  ViewController.swift
//  string_repeatCharacter
//
//  Created by yoshiyuki oshige on 2016/08/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 같은 문자를 반복한 문자열을 만든다
        let stars = String(repeating:"★", count:10)
        print(stars)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

