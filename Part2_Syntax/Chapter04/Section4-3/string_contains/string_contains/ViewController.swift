//
//  ViewController.swift
//  string_contains
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열을 검색한다
        let str1 = "네로는 검은고양이이다"
        let str2 = "검은고양이"
        if str1.contains(str2) {
            print("[\(str2)]가 포함되어 있습니다.")
        } else {
            print("[\(str2)]가 포함되어 있지 않습니다.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

