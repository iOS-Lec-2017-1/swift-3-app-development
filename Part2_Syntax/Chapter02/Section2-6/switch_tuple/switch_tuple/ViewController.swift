//
//  ViewController.swift
//  switch_tuple
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 튜플을 사용한 배분
        let size = (6, 11)
        switch size {
        case (0, 0):
            print("폭 높이 모두 0입니다")
        case (5...10, 5...10):
            print("규정 사이즈입니다")
        case (_, 5...10):
            print("폭\(size.0)이/가 규격 외입니다")
        case (5...10, _):
            print("높이\(size.1)이/가 규격 외입니다")
        default:
            print("폭 높이 모두 규정 외입니다")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

