//
//  ViewController.swift
//  array_copy
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var array1 = [1,2,3]
        let array2 = array1
        array1[0] = 99
        print("array1 \(array1)")
        print("array2 \(array2)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

