//
//  ViewController.swift
//  array_repeating
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let zeroList = [Double](repeating:0.0, count:10)
        let xList = [String](repeating:"설정하지 않음", count:5)
        print(zeroList)
        print(xList)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

