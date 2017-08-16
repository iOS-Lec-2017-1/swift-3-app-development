//
//  ViewController.swift
//  optional-binding_guard-else
//

import UIKit

class ViewController: UIViewController {
    
    let who = "헤니"
    var level:Int?
    
    func hello() {
        // level을 theLevel로 옵셔널 바인딩한다
        guard let theLevel = level else {
            // level이 nil이라면 중단
            return
        }
        
        if theLevel < 10 {
            print("헬로, " + who + " 대원")
        } else {
            print("헬로," + who + " 상급대원")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // level이 설정하지 않은 상태로 실행한다
        hello()
        // level을 설정한다
        level = 12
        hello()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

