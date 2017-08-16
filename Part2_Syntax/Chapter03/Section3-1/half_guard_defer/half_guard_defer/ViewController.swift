//
//  ViewController.swift
//  half_guard_defer
//


import UIKit

class ViewController: UIViewController {
    

    func half(num:Double) {
        // 마지막에 반드시 실행한다
        defer {
            print("계산종료")
        }
        // 중단처리
        guard num >= 10 else {
            // num이 10이상이 아닐 때 함수에서 빠져 나온다
            return
        }
        // 값을 반으로 해 출력한다
        let halfNum = num/2
        print("\(num)의 절반은 \(halfNum)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 절반 값을 출력한다
        half(num: 25)
        half(num: 9)
        half(num: 12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

