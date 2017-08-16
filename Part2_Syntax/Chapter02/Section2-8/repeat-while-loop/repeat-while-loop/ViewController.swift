//
//  ViewController.swift
//  repeat-while-loop
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 합계가 21이 되는 List 3개 수치（1～ 13）조합을 찾는다
        var a:UInt32, b:UInt32, c:UInt32
        var total:UInt32
        repeat {
            a = arc4random_uniform(13)+1 //1 ～ 13의 난수
            b = arc4random_uniform(13)+1
            c = arc4random_uniform(13)+1
            total = a+b+c
        } while (total != 21)
        
        print("\(a),\(b),\(c)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

