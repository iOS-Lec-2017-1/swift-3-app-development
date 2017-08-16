//
//  ViewController.swift
//  array_sample
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배열을 만든다
        let strArray = ["a", "b", "c", "d", "e"]
        let intArray = [1, 2, 3, 4, 5]
        var boolArray = [true, true, false, false]
        var tupleArray = [(0,0), (100,120), (180,200)]
        
        // true를 추가한다
        boolArray.append(true)
        // 맨 앞 값을(1,1)로 변경한다
        tupleArray[0] = (1,1)
        
        print(strArray)
        print(intArray)
        print(boolArray)
        print(tupleArray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

