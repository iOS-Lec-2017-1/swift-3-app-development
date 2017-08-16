//
//  ViewController.swift
//  let_declar1
//
//  Created by yoshiyuki oshige on 2016/07/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 다음 상수는 선언만하고 사용하지 않으므로 경고가 나옵니다.
        
        let name:String = "대성"
        let width:Int = 56, height:Int = 75
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

