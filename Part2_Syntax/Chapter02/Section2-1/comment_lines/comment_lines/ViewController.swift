//
//  ViewController.swift
//  comment_lines
//
//  Created by yoshiyuki oshige on 2016/07/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 다음 상수는 선언만하고 사용하지 않으므로 경고가 나옵니다.
        
        /* 코멘트 */
        var msg1 = "좋은아침"
        var msg2 /* 중간에 코멘트 */ = "잘자요"
        
        /* 여러 행 코멘트
         var msg3 = "식사하셨나요"
         var msg4 = "안녕히 주무세요"
         */
        /* 코멘트 네스팅
         /*
         print(msg3)
         print(msg4)
         */
         print("잘가요")
         */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

