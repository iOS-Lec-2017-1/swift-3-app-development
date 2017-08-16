//
//  ViewController.swift
//  array_removeFirst
//
//  Created by yoshiyuki oshige on 2016/08/07.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colorArray = ["red","blue","green","black","white"]
        let delColor = colorArray.removeFirst()
        print("\(delColor)를 삭제했습니다.\(colorArray)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

