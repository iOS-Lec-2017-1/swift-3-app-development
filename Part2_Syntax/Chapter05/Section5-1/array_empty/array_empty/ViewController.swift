//
//  ViewController.swift
//  array_empty
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 배열 선언
        var strArray = [String]()
        var intArray = [Int]()
        var doubleArray = Array<Double>()
        
        // 값을 설정한다
        strArray = ["a", "b", "c"]
        intArray = [1, 2, 3]
        doubleArray = ["a", "b", "c"] // 오류가 납니다
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

