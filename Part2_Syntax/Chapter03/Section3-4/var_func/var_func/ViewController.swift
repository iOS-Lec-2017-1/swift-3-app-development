//
//  ViewController.swift
//  var_func
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // calc()를 정의한다
    func calc(unitPrice:Int, quantity:Int) -> Int {
        return unitPrice * quantity
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // calc()을 변수 myCalc에 대입한다
        let myCalc = calc(unitPrice:quantity:)
        let amount = myCalc(280, 4)
        print(amount)

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

