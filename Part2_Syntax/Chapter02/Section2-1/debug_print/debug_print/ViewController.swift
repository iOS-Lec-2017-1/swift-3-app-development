//
//  ViewController.swift
//  debug_print
//
//  Created by yoshiyuki oshige on 2016/07/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let msg = "안녕하세요"
        let boy = 12
        let girl = 10
        let array = ["a", "b", "c"]
        
        // 출력한다
        print(msg)
        print(boy, girl) // 여러 개 값을 콤마로 구분한다 
        print("남자 \(boy),여자 \(girl)", terminator: " ---- ") // 개행하지 않는다
        print("합계 \(boy + girl)人")
        print(array) // 배열
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

