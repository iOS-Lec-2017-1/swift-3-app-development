//
//  ViewController.swift
//  string_toDouble
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열을 소수점으로 변환해 계산한다
        let r = "20"
        let pai = "3.14"
        let area = Double(r)! * Double(r)!  * Double(pai)!
        print("반경 \(r) 면적은 \(area)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

