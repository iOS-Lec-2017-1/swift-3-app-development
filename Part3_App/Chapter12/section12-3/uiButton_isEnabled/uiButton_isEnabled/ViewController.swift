//
//  ViewController.swift
//  uiButton_isEnabled
//
//  Created by yoshiyuki oshige on 2016/08/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 라벨과 OK 버튼을 Outlet 접속한다
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    // Random 버튼으로 난수를 만든다
    @IBAction func random(_ sender: Any) {
        // 난수（0〜99）을 만든다
        let num = arc4random_uniform(100)
        myLabel.text = String(num)
        
        // num이 50일 때 OK 버튼을 유효로 한다
        // 50미만일 때는 무효로 한다
        okButton.isEnabled = (num>=50)
    }
    
    // OK 버튼으로 실행하는 메서드
    @IBAction func tapOK(_ sender: Any) {
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

