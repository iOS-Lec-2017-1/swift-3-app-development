//
//  ViewController.swift
//  switch_string
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // theColor List 값에 따라 처리를 분기한다
        let theColor = "green"
        switch theColor {
        case "red","yellow":
            print("빨간색과 노란색은 주의")
        case "green":
            print("녹색은 쾌적")
        case "gray":
            print("회색은 정지 중")
        default:
            print("그 외는 순조")
        }
        print(theColor)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

