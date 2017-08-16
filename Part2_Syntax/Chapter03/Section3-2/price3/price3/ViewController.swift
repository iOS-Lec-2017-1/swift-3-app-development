//
//  ViewController.swift
//  price3
//

import UIKit

class ViewController: UIViewController {
    
    // 단가와 명수를 인수로 정의해 요금을 계산하는 함수
    func price3(unitPrice:Int, quantity:Int = 1, shippingCharge:Int = 2500) -> Int {
        let result = unitPrice * quantity + shippingCharge
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 예１：단가 10000원의 요금(개수와 배송료는 생략해 초깃값으로 계산)
        let ex1 = price3(unitPrice: 10000)
        print("\(ex1)원")
        
        // 예２：단가 10000원, 개수 2의 요금（배송료는 생략해 초깃값으로 계산)
        let ex2 = price3(unitPrice: 10000, quantity: 2)
        print("\(ex2)원")
        
        // 예３：단가 25000원, 배송료 15000원 요금을 계산한다(개수는 생략해 초깃값으로 계산)
        let ex3 = price3(unitPrice: 25000, shippingCharge: 15000)
        print("\(ex3)원")
        
        // 예４：단가 12000원, 개수 5、배송료 0원 요금을 계산한다
        let ex4 = price3(unitPrice: 12000, quantity: 5, shippingCharge: 0)
        print("\(ex4)원")
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

