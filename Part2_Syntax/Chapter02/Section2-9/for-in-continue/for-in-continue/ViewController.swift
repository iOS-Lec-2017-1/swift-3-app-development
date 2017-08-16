//
//  ViewController.swift
//  for-in-continue
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 음수는 스킵하고 양수만 더한다
        let vlist = [3,5,-2,6,-8,2]
        var total = 0
        for v in vlist {
            // 음수는 스킵한다
            if v < 0 {
                continue
            }
            total += v
            print("\(v),")
        }
        print("합계：\(total)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

