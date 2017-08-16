//
//  ViewController.swift
//  array_access_update
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var theArray = ["a","b","c","d","e","f","g","h","i"]
        theArray[0] = "가"
        theArray[2] = "나"
        theArray[4...6] = ["빨강", "하양", "노랑", "파랑", "초록"]
        print(theArray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

