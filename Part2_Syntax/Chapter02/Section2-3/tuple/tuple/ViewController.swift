//
//  ViewController.swift
//  tuple
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 다음 상수와 변수는 선언만하고 사용하지 않아서 경고가 나옵니다.
        
        // 튜플을 만든다
        let product = ("Swift", 2014)
        var amount = (1000, 80)
        var guest = ("지용", "지드래곤", 1234)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

