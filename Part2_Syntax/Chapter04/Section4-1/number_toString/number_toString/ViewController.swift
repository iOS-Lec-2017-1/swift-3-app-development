//
//  ViewController.swift
//  number_toString
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 소수를 문자열로 한다
        let weight = 135.5
        let package = 12.0
        let str1 = "내용량:" + String(weight) + "g"
        let str2 = "총중량:" + (weight + package).description + "g"
        
        print(str1)
        print(str2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

