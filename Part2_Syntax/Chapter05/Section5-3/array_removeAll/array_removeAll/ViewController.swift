//
//  ViewController.swift
//  array_removeAll
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colorArray = ["red","blue","green","black","white"]
        colorArray.removeAll()
        print(colorArray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

