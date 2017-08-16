//
//  ViewController.swift
//  addSubView_label2
//
//  Created by yoshiyuki oshige on 2016/09/02.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 라벨을 만든다
        let labelA = UILabel()
        labelA.text = "라벨A"
        // 라벨의 영역
        let xy = CGPoint(x: 80, y: 150)
        let wh = CGSize(width: 110, height: 21)
        labelA.frame = CGRect(origin: xy, size: wh)
        // 배경색과 문자색
        labelA.backgroundColor = UIColor.orange
        labelA.textColor = UIColor.white
        
        // 루트 뷰에 추가한다
        self.view.addSubview(labelA)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

