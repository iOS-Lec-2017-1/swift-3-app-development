//
//  ViewController.swift
//  array_plus_array
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let basicCourse = ["달리기", "수영"]
        let fullCourse = basicCourse + ["바이크", "카누"]
        print(basicCourse)
        print(fullCourse)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

