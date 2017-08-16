//
//  ViewController.swift
//  half_guard_defer
//
//  Created by yoshiyuki oshige on 2016/08/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    func half(num:Double) {
        // 마지막에 반드시 한번은 실행한다
        defer {
            print("계산 종료")
        }
        // 중단처리
        guard num>=10 else {
            // num이 10 이상이 아닐   함수를 종료한다
            return
        }
        // 값을 반으로 해 출력한다
        let halfNum = num/2
        print("\(num)の半分は\(halfNum)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 값을 반으로 나눠 출력한다
        half(num: 25)
        half(num: 9)
        half(num: 12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

