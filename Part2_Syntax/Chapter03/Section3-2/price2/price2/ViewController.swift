//
//  ViewController.swift
//  price2
//
//  Created by yoshiyuki oshige on 2016/07/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 단가와 인원수를 인수로 지정해 요금을 계산하는 함수
    func price2(numOfPersons:Int, unitPrice:Int) -> Int {
        let result = unitPrice * numOfPersons
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1명 13000원, 3명인 경우의 요금을 계산한다
        let price = price2(numOfPersons: 13000, unitPrice: 3)
        print(price)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

