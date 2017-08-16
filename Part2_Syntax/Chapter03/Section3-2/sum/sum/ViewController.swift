//
//  ViewController.swift
//  sum
//
//  Created by yoshiyuki oshige on 2016/07/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 인수를 합한다
    func sum(numbers:Double...) -> Double {
        var total:Double = 0.0
        // 인수는 numbers 배열에 들어가 있다
        for num in numbers {
            total += num
        }
        return total
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 합계를 구한다
        let amount = sum(numbers: 5,6,7,8,9)
        print(amount)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

