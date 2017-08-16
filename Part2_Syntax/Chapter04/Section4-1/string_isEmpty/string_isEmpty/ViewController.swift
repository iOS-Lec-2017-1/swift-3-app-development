//
//  ViewController.swift
//  string_isEmpty
//

import UIKit

class ViewController: UIViewController {

    func hello(_ who:String){
        // who가 비어있는지 조사한다
        if who.isEmpty {
            return
        }
        let msg = "헬로！" + who + "씨"
        print(msg)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hello()를 시험한다
        hello("")
        hello("민호")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

