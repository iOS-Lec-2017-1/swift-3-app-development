//
//  ViewController.swift
//  dictionary_update
//
//  Created by yoshiyuki oshige on 2016/08/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var members = ["서울":15,"부산":12,"독도":9]
        // 부산 값을 수정합니다
        members["부산"] = 17
        print(members)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

