//
//  ViewController.swift
//  array_removeAt
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colorArray = ["red","blue","green","black","white"]
        let delColor = colorArray.remove(at: 2)
        print("\(delColor)을 삭제했습니다.\(colorArray)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

