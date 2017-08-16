//
//  ViewController.swift
//  string_empty
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 빈 문자열
        let emptyString = String()
        var str = "Hello"
        str = ""
        
        print(emptyString)
        print(str)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

