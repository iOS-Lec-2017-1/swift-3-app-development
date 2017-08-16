//
//  ViewController.swift
//  dictionary_isEmpty
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theDic:[String:Int] = [:]
        if theDic.isEmpty {
            print("theDic은 빈 사전입니다")
        } else {
            print(theDic)
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

