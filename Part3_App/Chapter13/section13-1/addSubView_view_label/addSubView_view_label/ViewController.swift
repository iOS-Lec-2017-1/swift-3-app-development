//
//  ViewController.swift
//  addSubView_view_label
//
//  Created by yoshiyuki oshige on 2016/09/02.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 뷰를 만든다
        let theView = UIView()
        // 뷰의 영역과 배경색
        theView.frame = CGRect(x: 60, y: 100, width: 210, height: 200)
        theView.backgroundColor = UIColor(red:0.9, green:0.9, blue:0.6, alpha:1.0)
        
        // 라벨을 만든다
        let labelB = UILabel()
        labelB.text = "라벨B"
        // 라벨의 영역
        labelB.frame = CGRect(x: 50, y: 60, width: 110, height: 21)
        // 배경색과 문자색
        labelB.backgroundColor = UIColor.orange
        labelB.textColor = UIColor.white
        
        // labelB를 theView에 추가한다
        theView.addSubview(labelB)
        // theView를 루트 뷰에 추가한다
        self.view.addSubview(theView)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

