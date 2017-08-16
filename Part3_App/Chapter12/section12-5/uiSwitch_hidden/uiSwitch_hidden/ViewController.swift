//
//  ViewController.swift
//  uiSwitch_hidden
//
//  Created by yoshiyuki oshige on 2016/08/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 라벨 프로퍼티 선언
    @IBOutlet weak var msgLabel: UILabel!
    
    // 스위치 변환으로 호출되는 메서드
    @IBAction func showHide(_ sender: UISwitch) {
        // 스위치 온／오프와 라벨의 isHidden 값을 반대로 한다
        msgLabel.isHidden = !sender.isOn
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

