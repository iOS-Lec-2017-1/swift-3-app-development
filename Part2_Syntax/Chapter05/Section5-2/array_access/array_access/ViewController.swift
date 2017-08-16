//
//  ViewController.swift
//  array_access
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let abcArray = ["a","b","c","d","e","f","g","h","i"]
        let str1 = abcArray[0]
        let str2 = abcArray[2]
        let newArray = abcArray[4...6]
        print(str1)
        print(str2)
        print(newArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

