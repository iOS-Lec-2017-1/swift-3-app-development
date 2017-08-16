//
//  ViewController.swift
//  array_type_1
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // array:[값의 형]로 형 지정
        let colors:[String] = ["red", "blue", "green"]
        let numList:[Int] = [12,34,56,78,90]
        var resultList:[Bool]
        resultList = [true, false, true, false]
        
        print(colors)
        print(numList)
        print(resultList)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

