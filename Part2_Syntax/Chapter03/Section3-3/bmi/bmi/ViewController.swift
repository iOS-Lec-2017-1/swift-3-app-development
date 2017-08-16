//
//  ViewController.swift
//  bmi
//
//  Created by yoshiyuki oshige on 2016/07/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // bmi를 계산한다
    func bmi(weight kg:Double, height cm:Double) -> Double {
        
        if (kg <= 0) && (cm <= 0) {
            // kg또는 cm가 0 이상인 경우는 -1을 반환한다
            return -1
        }
        // 체중(kg)을 신장(m)의 2제곱근으로 나눈다
        var result = kg/pow(cm*0.01, 2)
        // 소수점 아래 1자리에서 반올림한다
        result = round(result*10)/10.0
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // bmi()를 시험한다
        let myBMI = bmi(weight: 56.0, height: 172.5)
        print(myBMI)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

