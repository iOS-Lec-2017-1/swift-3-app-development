//
//  ViewController.swift
//  index_after
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ２번째 문자를 꺼냅니다
        
        let str = "Swift입문노트"
        // 맨 앞의 인덱스
        var index = str.startIndex
        // 인덱스를 하나 뒤로 갑니다
        index = str.index(after: index)
        let chr = str[index]
        print(chr)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

