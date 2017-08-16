//
//  ViewController.swift
//  uiSlider_alpha
//
//  Created by yoshiyuki oshige on 2016/08/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 꽃 프로퍼티 선언
    @IBOutlet weak var flower: UIImageView!
    
    // 슬라이더 변화로 호출되는 메서드
    @IBAction func changeSlider(_ sender: UISlider) {
        // 알파 값을 슬라이더 값에 설정한다 
        flower.alpha = CGFloat(sender.value)
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

