//
//  ViewController.swift
//  while-break
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 70보다 큰 값이 나올 때까지 반복한다
        
        var num:UInt32 = 0
        // 무한 반복한다
        while true {
            num = arc4random_uniform(100)
            if num>70 {
                break // 70보다 큰 값이 나오면 중단한다
            }
        }
        print(num)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

