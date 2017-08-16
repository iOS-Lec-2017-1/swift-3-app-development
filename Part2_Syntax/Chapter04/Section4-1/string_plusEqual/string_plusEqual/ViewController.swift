//
//  ViewController.swift
//  string_plusEqual
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let week = ["일", "월", "화", "수", "목", "금", "토"]
        var oneweek = ""
        for day in week {
            oneweek += day
        }
        print(oneweek)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

