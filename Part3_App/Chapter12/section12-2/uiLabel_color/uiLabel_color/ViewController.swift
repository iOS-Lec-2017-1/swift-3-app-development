//
//  ViewController.swift
//  uiLabel_color
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 양 또는 음의 값을 테스트해본다
        myLabel.text = "10.2"
        //myLabel.text = "-1.5"

        // myLabel에 들어 있는 수치
        guard let num = Double(myLabel.text!) else {
            return
        }
        
        // 문자색과 배경색 설정
        if num >= 0.0 {
            myLabel.textColor = UIColor.black
            myLabel.backgroundColor = UIColor.white
        } else {
            myLabel.textColor = UIColor.white
            myLabel.backgroundColor = UIColor.red
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

