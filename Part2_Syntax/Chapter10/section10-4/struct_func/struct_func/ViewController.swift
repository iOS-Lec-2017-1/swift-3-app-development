//
//  ViewController.swift
//  struct_func
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Snack {
        var quantity:Int
        var unitPrice:Int
        
        // 가격
        func price() -> Int {
            return quantity * unitPrice
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 4개 들이와 12개 들이 상품을 만든다
        let snack4 = Snack(quantity: 4, unitPrice: 780)
        let snack12 = Snack(quantity: 12, unitPrice: 780)
        
        // 가격을 알아본다
        let price4 = snack4.price()
        let price12 = snack12.price()
        print("4개 들이 \(price4)원, 12개 들이 \(price12)원")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


