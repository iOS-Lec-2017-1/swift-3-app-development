//
//  ViewController.swift
//  uiLabel_new
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 라벨을 작성한다
        let myLabel = UILabel()
        myLabel.text = "헬로 월드"
        
        // 라벨의 영역
        myLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 21)
        
        // 문자색과 배경색
        myLabel.textColor = UIColor.black
        myLabel.backgroundColor = UIColor.lightGray
        
        // 뷰에 추가한다
        view.addSubview(myLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

