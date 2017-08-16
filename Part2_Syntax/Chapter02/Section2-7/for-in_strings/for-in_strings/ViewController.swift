//
//  ViewController.swift
//  for-in_strings
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 문자열에서 1문자씩 꺼낸다
        
        let message = "초대합니다"
        for char in message.characters {
            print(char)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

