//
//  ViewController.swift
//  string_toInt
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열을 정수로 변환해 계산한다
        let price:String = "240"
        let quantity:String = "2"
        let amount = Int(price)! * Int(quantity)!
        print(amount)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

