//
//  ViewController.swift
//  array_type_2
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // array:Array<값의 형>
        let colors:Array<String> = ["red", "blue", "green"]
        let numList:Array<Int> = [12,34,56,78,90]
        var resultList:Array<Bool>
        resultList = [true, false, true, false]
        
        print(colors)
        print(numList)
        print(resultList)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

