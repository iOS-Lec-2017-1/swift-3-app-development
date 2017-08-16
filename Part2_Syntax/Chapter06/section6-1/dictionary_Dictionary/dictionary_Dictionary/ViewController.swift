//
//  ViewController.swift
//  dictionary_Dictionary
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sizeTable:Dictionary<String, Int> = ["S":47, "M":52, "L":55]
        let resultDic:Dictionary<String, Bool> = ["A":true, "B":false, "C":true]
        let pointDic:Dictionary<String, (Int,Int)>
        pointDic = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        
        
        print(sizeTable)
        print(resultDic)
        print(pointDic)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

