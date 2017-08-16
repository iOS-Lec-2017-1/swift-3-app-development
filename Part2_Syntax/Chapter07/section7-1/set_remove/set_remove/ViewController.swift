//
//  ViewController.swift
//  set_remove
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colorSet:Set = ["red", "yellow", "black", "green"]
        if let theColor = colorSet.remove("black") {
            print("\(theColor)을 삭제했습니다.")
        } else {
            print("세트 변화는 없습니다.")
        }
        print(colorSet)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

