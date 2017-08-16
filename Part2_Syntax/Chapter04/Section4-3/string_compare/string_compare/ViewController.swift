//
//  ViewController.swift
//  string_compare
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str0 = "Swift입문"
        let str1 = "SWIFT입문"
        let str2 = "Swift" + "입문"
        
        if str0 == str1 {
            print("str0과 str1은 같습니다.")
        } else {
            print("str0과 str1은 같지 않습니다.")
        }
        if str0 == str2 {
            print("str0와 str2는 같습니다.")
        } else {
            print("str0와 str2은 같지 않습니다.")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

