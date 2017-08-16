//
//  ViewController.swift
//  array_range1
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // -3〜3이 들어간 배열
        let numbers = [Int](-3...3)
        print(numbers)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

