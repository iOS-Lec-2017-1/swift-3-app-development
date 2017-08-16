//
//  ViewController.swift
//  array_enumerate
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorList = ["bulew", "yellow", "red", "green"]
        for (index, value) in colorList.enumerated() {
            print((index, value))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

