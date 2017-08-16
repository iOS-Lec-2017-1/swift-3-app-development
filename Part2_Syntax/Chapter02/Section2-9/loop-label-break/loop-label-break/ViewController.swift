//
//  ViewController.swift
//  loop-label-break
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 안의 List쪽 루프에서 바깥쪽 루프를 브레이크한다
        
        let vlist:Array = [[4,2],[5],[9,8,10],[6,8,-9],[4,2],[9,3]]
        // vlist를 검사한다
        outloop:for alist in vlist {
            // alist를 검사한다
            inloop:for v in alist {
                // 마이너스 값이 있으면 출력하고 중단한다
                if v < 0 {
                    print(alist)
                    break outloop
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

