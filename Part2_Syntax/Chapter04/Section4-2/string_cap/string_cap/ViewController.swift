//
//  ViewController.swift
//  string_cap
//

import UIKit

class ViewController: UIViewController {

    func cap(_ str:String) -> String {
        // １번째 문자
        let start = str.startIndex
        let chr = str[start]
        let str1 = String(chr)
        
        // ２번째 문자 이후
        let second = str1.index(after: start)
        let str2 = str.substring(from: second)
        
        // １번째 문자를 대문자, 남은 문자를 소문자로 해 연결한다
        let capStr = str1.uppercased() + str2.lowercased()
        return capStr
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str1 = cap("apple")
        let str2 = cap("APPLE")
        print((str1, str2))
        
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

