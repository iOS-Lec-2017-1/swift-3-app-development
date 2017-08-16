//
//  ViewController.swift
//  let_var_focus3
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lottery()
    }
    
    func lottery() {
        // 1〜10의 난수를 만든다
        let num = arc4random_uniform(10)+1
        // num 값으로 처리를 분기한다
        if num>=7 {
            // num이 7 이상일 때
            let msg = "당첨"
            print(num, msg)
        } else {
            // num이 7 미만일 때
            let msg = "꽝"
            print(num, msg)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

