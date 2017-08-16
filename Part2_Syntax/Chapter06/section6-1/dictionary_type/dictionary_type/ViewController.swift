//
//  ViewController.swift
//  dictionary_type
//
//  Created by yoshiyuki oshige on 2016/08/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sizeTable:[String:Int] = ["S":47, "M":52, "L":55]
        let resultDic:[String:Bool] = ["A":true, "B":false, "C":true]
        let pointDic:[String:(Int,Int)] = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        var theUser:[String:Any]
        theUser = ["이름":"영배", "연령":29, "득점":[67,82]]

        print(sizeTable)
        print(resultDic)
        print(pointDic)
        print(theUser)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

