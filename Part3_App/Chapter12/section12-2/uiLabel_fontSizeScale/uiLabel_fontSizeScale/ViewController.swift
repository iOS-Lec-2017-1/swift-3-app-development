//
//  ViewController.swift
//  uiLabel_fontSizeScale
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textdata = "상세!Swift iOS 앱 개발 입문 노트"
        // 사이즈 고정으로 표시한다
        myLabel1.text = textdata
        
        // 모두 표시할 수 있게 문자 사이즈를 축소한다
        myLabel2.adjustsFontSizeToFitWidth = true
        myLabel2.text = textdata
        
        // 문자 사이즈를 축소로 60%까지는 축소한다 
        myLabel3.adjustsFontSizeToFitWidth = true
        myLabel3.minimumScaleFactor = 0.6
        myLabel3.text = textdata
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

