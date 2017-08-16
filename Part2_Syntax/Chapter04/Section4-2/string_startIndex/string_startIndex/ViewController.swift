//
//  ViewController.swift
//  string_startIndex
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 맨 앞의 문자를 꺼냅니다
        
        let str = "Swift입문노트"
        let start = str.startIndex
        let char = str[start]
        print(char)
        
        let result = "맨 앞의 문자는 [" + String(char) + "]입니다."
        print(result)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

