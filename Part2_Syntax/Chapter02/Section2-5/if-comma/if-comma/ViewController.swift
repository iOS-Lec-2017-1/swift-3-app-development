//
//  ViewController.swift
//  if-comma
//

import UIKit

class ViewController: UIViewController {
    
    // 수학, 영어 모두 50점 이상으로 합계가 120점 이상일 떄 합격
    func judgement(math:UInt, english:UInt) {
        // // 여러 개의 조건식을 콤마로 구분한 if문
        if math >= 50, english >= 50, (math + english) >= 120{
            print("합격", terminator: "／")
        } else {
            print("불합격", terminator: "／")
        }
        print("수학 \(math),영어 \(english),합계 \(math + english)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테스트
        judgement(math: 53, english: 71)
        judgement(math: 56, english: 62)
        judgement(math: 48, english: 79)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

