//
//  ViewController.swift
//  string_bigger
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str1 = "iPad"
        let str2 = "iPhone"
        
        if str1>str2 {
            print("\(str1)쪽이 \(str2)보다 크다")
        } else  if str1<str2{
            print("\(str2)쪽이 \(str1)보다 크다")
        } else {
            print("\(str1)와 \(str2)은 같다")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

