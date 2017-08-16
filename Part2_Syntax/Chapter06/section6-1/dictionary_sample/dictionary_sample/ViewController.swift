//
//  ViewController.swift
//  dictionary_sample
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sizeTable = ["S":47, "M":52, "L":55]
        let numDic = [10:"a", 20:"b", 30:"c"]
        let resultDic = ["A":true, "B":false, "C":true]
        let pointDic = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        
        print(sizeTable)
        print(numDic)
        print(resultDic)
        print(pointDic)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

