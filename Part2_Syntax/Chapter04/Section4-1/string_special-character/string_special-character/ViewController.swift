//
//  ViewController.swift
//  string_special-character
//
//  Created by yoshiyuki oshige on 2016/08/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열에 개행과 더블 쿼테이션을 넣는다
        let swift = "Swift란 \n\"칼새\"입니다."
        print(swift)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

