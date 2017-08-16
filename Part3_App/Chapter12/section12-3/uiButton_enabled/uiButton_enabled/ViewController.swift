//
//  ViewController.swift
//  uiButton_enabled
//
//  Created by yoshiyuki oshige on 2016/08/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 라벨과 OK 버튼을 아울렛 연결한다
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    // Random 버튼으로 난수를 만든다
    @IBAction func random(_ sender: AnyObject) {
        // 난수(0~99)를 만든다
        let num = arc4random_uniform(100)
        myLabel.text = String(num)
        
        // nnum이 50 이상일   OK 버튼을 활성화한다 
        // 50 미만일 때는 비활성화한다
        okButton.isEnabled = (num>=50)
    }
    
    // OK으로 실행할 메서드
    @IBAction func tapOK(_ sender: AnyObject) {
        print("OK")
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

