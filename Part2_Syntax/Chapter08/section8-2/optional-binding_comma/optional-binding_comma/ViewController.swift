//
//  ViewController.swift
//  optional-binding_comma
//
//  Created by yoshiyuki oshige on 2016/08/12.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let year1:String = "2001"
        let year2:String = "2017"
        // 여러 개의 옵셔널 바인딩과 조건을 합한다
        if let startYear = Int(year1), let endYear = Int(year2) , startYear < endYear {
            let years = endYear - startYear
            print("\(years)년 차이입니다")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

