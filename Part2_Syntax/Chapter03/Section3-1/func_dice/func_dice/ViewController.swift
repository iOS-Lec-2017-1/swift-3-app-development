//
//  ViewController.swift
//  func_dice
//


import UIKit

class ViewController: UIViewController {

    // 1〜6 중에서 정수를 1개 선택해 반환한다
    func dice() -> Int {
        let number = 1 + arc4random_uniform(6)
        return Int(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dice()를 5회 실행한다
        for _ in 1...5 {
            let num = dice()
            print(num)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

