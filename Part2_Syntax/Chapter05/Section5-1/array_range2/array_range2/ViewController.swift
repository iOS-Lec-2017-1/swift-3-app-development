//
//  ViewController.swift
//  array_range2
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 5〜9가 들어간 배열
        let numbers = Array<Int>(5..<10)
        print(numbers)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

