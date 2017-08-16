//
//  ViewController.swift
//  string_substringToFrom
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str = "Swift입문노트"
        
        // 맨 앞 문자부터 5번째 문자(0부터 카운트)
        let index = str.index(str.startIndex, offsetBy: 5)
        
        // index가 가리키는 문자
        let chr = str[index]
        
        // index 보다 앞
        let str1 = str.substring(to: index)
        
        //index 보다 뒤
        let str2 = str.substring(from: index)
        
        print(chr)
        print(str1)
        print(str2)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

