//
//  ViewController.swift
//  uiStepper_value
//
//  Created by yoshiyuki oshige on 2016/08/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 라벨 프로퍼티 선언
    @IBOutlet weak var numLabel: UILabel!
    
    // 스테퍼로 호출하는 메서드
    @IBAction func changedStepperValue(_ sender: UIStepper) {
        // 스테퍼 값
        let num = Int(sender.value)
        // 라벨에 표시한다
        numLabel.text = String(num)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

