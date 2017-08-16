//
//  ViewController.swift
//  optional-binding_if
//
//  Created by yoshiyuki oshige on 2016/08/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str:String?
        str = "Swift"
        // str이 nil인지 아닌지로 처리를 분기한다
        if let msg = str {
            // str이 nil이 아니면 그 값을 msg에 대입해 출력한다
            print(msg + " 월드")
        } else {
            // str이 nil일 때 출력한다
            print("헬로 월드")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

