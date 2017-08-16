//
//  ViewController.swift
//  array_nesting
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nestArray = [["a1","a2","a3"], ["b1","b2","b3"], ["c1","c2","c3"]]
        let theValue = nestArray[1][2]
        nestArray[2][0] = "Hello"
        print(theValue)
        print(nestArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

