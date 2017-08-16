//
//  ViewController.swift
//  nested_func
//

import UIKit

class ViewController: UIViewController {

    // 나이로 이용하는 함수를 고른다
    func priceFunc(age:Int) -> (Int) -> Int {
        
        // 어린이 계산
        func kids(number:Int) -> Int {
            return 4000 * number
        }
        
        // 어른 계산
        func adult(number:Int) -> Int {
            return 6000 * number
        }
        
        // 반환하는 함수를 연령으로 나눈다
        if age < 16 {
            return kids
        } else {
            return adult
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 나이로 이용하는 함수를 꺼낸다
        let age10 = priceFunc(age: 10)
        let age18 = priceFunc(age: 18)
        
        // 각각의 함수로 인원수를 지정한다
        let amount1 = age10(1)
        let amount2 = age18(2)
        
        print(amount1)
        print(amount2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

