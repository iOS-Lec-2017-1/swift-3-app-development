//
//  ViewController.swift
//  range_substringFrom
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*let str = "서울시 마포구 합정동 1-2-3"
        // str의 "서울시"의 범위를 조사한다
        let result = str.range(of: "서울시")
        if let theRange = result {
            // result에 범위가 들어있을 때 범위보다 뒤쪽 문자열을 꺼낸다
            let afterStr = str.substring(from: theRange.upperBound)
            print(afterStr)
        } else {
            print(str)
        }*/
        
        // 삭제하는 부분
        var str = "서울시 마포구 합정동 1-2-3"
        // str의 "서울시"의 범위를 조사한다
        let result = str.range(of: "서울시")
        if let theRange = result {
            // result에 범위가 들어있을 때 삭제한다
            str.removeSubrange(theRange)
        }
        print(str)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

