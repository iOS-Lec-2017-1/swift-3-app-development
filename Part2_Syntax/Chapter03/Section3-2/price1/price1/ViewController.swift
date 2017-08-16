//
//  ViewController.swift
//  price1
//


import UIKit

class ViewController: UIViewController {
    
    // 인원수만큼 요금을 계산하는 함수
    func price1(numOfPersons:Int) -> Int {
        let unitPrice = 1200
        let result = unitPrice * numOfPersons
        return result
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 5명인 경우의 요금을 계산한다
        let price = price1(numOfPersons: 5)
        print(price)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

