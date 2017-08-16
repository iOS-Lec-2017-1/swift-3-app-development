//
//  ViewController.swift
//  testResult
//
//  Created by yoshiyuki oshige on 2016/07/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func testResult(laguage:Int, math:Int, english:Int) -> (total:Int, average:Double) {
        // 3과목 합계
        let total = laguage + math + english
        // 3과목 평균
        var ave = Double(total)/3
        // 소수점 아래 1자리에서 반올림
        ave = round(ave*10)/10
        return (total, ave)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 3과목 테스트 결과
        let result = testResult(laguage: 80, math: 68, english: 72)
        print("합계 \(result.total)")
        print("평균 \(result.average)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

