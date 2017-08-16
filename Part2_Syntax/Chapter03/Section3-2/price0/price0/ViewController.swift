//
//  ViewController.swift
//  price0
//


import UIKit

class ViewController: UIViewController {
    
    func price0() -> Int {
        let numberOfPersons = 3
        let unitPrice = 1200
        let result = unitPrice * numberOfPersons
        return result
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // price0()을 실행한다
        let price = price0()
        print(price)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

