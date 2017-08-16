//
//  ViewController.swift
//  array_sorted
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fruit = ["orange", "apple", "pineapple", "banana"]
        let fruitSorted = fruit.sorted()
        print(fruit)
        print(fruitSorted)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

