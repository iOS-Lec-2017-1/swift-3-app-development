//
//  ViewController.swift
//  array_sort
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        // 배열을 오름차순으로 정렬한다
        var ageArray = [34, 23, 31, 26, 28, 22]
        ageArray.sort()
        print(ageArray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

