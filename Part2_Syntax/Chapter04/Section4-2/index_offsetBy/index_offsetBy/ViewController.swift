//
//  ViewController.swift
//  index_offsetBy
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let str = "Swift입문노트"
        // 맨 앞 문자부터 5번째 문자
        let index1 = str.index(str.startIndex, offsetBy: 5)
        // 맨 뒤 문자부터 4번째 문자
        let index2 = str.index(str.endIndex, offsetBy: -4)
        
        let chr1 = str[index1]
        let chr2 = str[index2]
        print((chr1, chr2))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

