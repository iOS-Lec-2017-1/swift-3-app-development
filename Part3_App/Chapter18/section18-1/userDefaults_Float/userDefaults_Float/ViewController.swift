//
//  ViewController.swift
//  userDefaults_Float
//
//  Created by yoshiyuki oshige on 2016/09/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 슬라이더와 라벨을 Outlet 접속한다
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    // 프로그래스 바와 라벨을 Outlet 접속한다
    @IBOutlet weak var myProgress: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    // 유저 디폴트에 저장한다
    @IBAction func saveValue(_ sender: Any) {
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        let value = mySlider.value
        // 라벨에 값을 표시한다
        sliderLabel.text = String(value)
        // 키 "sliderValue"에 값을 저장한다
        defaults.set(value, forKey: "sliderValue")
    }
    
    // 유저 디폴트로부터 읽어 들인다
    @IBAction func readValue(_ sender: Any) {
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        // 키 "sliderValue"를 Float로써 값을 읽어 들인다
        let value = defaults.float(forKey: "sliderValue")
        // 라벨에 값을 표시한다
        progressLabel.text = String(value)
        // 프로그래스 바에 값을 설정한다
        myProgress.progress = value
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
