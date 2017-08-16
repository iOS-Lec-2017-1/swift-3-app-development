//
//  ViewController.swift
//  uiLabel_alignment
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
        // 문자 정렬을 설정
        myLabel1.textAlignment = .left
        myLabel2.textAlignment = .center
        myLabel3.textAlignment = .right
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

