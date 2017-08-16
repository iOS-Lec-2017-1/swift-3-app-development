//
//  ViewController.swift
//  var_declar1
//
//  Created by yoshiyuki oshige on 2016/07/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 다음 변수는 선언만하고 사용하지 않아서 경고가 나옵니다.
        
        var name:String = "로즈"
        var level:Int = 1, point:Int = 10
        name = "수지"
        point = 50
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

