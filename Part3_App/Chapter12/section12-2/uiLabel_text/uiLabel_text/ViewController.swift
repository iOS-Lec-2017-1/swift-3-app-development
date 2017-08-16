//
//  ViewController.swift
//  uiLabel_text
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    // 라벨 프로퍼티 선언
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 단가와 개수
        let unitPrice = 1200
        let quantity = 4
        // 라벨에 표시한다
        myLabel1.text = "단가 \(unitPrice), \(quantity)개"
        myLabel2.text = String(unitPrice*quantity)
        myLabel3.text = "금액 " + myLabel2.text! + "원"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

