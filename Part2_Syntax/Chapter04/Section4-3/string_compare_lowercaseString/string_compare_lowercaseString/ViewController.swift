//
//  ViewController.swift
//  string_compare_lowercaseString
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str1 = "apple"
        let str2 = "Apple"
        // 모든 소문자로 비교한다
        if str1.lowercased() == str2.lowercased() {
            print("str0과 str1은 같습니다.")
            print(str2)
        } else{
            print("str0와 str1은 같지 않습니다.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

