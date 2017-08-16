//
//  ViewController.swift
//  userDefaults_Bool
//
//  Created by yoshiyuki oshige on 2016/09/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 스위치를 Outlet 접속한다
    @IBOutlet weak var mySwitch1: UISwitch!
    @IBOutlet weak var mySwitch2: UISwitch!
    
    // 유저 디폴트에 저장한다
    @IBAction func saveStatus(_ sender: Any) {
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        // mySwitch1 값을 키 "switchOn"에 저장한다
        defaults.set(mySwitch1.isOn, forKey: "switchOn")
    }
    
    // 유저 디폴트로부터 읽어 들인다
    @IBAction func readStatus(_ sender: Any) {
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        // 키 "switchOn" 값을 Bool로써 읽어 mySwitch2에 설정한다
        mySwitch2.isOn = defaults.bool(forKey: "switchOn")
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
