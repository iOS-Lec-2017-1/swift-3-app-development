//
//  ViewController.swift
//  dictionary_access
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var members = ["서울":15,"제주도":12,"독도":9]
        let seoulValue = members["서울"]
        let jejudoValue = members["제주도"]
        print(seoulValue, jejudoValue)
        // 값을 언랩해 더한다
        let seouljejudo = seoulValue! + jejudoValue!
        print("서울과 제주도의 합계: \(seouljejudo)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

