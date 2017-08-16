//
//  ViewController.swift
//  tuple_index
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 인덱스 번호로 꺼낸다
        
        let amount = (1000, 80)
        let price = amount.0 //0번 값
        let tax = amount.1   //1번 값
        print(price + tax)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

