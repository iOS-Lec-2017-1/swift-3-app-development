//
//  ViewController.swift
//  array_insert
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var aList = ["a", "b", "c", "d"]
        aList.insert("XYZ", at: 2)
        print(aList)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

