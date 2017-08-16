//
//  ViewController.swift
//  dictionary_dictionaryLiteral
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = ("A", 1)
        let b = ("B", 2)
        let c = ("C", 3)
        let abcDic = Dictionary(dictionaryLiteral: a,b,c)
        print(abcDic)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

