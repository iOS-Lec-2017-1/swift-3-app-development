//
//  ViewController.swift
//  array_isEmpty
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var theArray = [1, 2, 3]
        theArray = []
        if theArray.isEmpty {
            print("theArray는 빈 배열입니다")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

