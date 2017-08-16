//
//  ViewController.swift
//  generics_tuple
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 튜플을 만든다
    func makeTuple<T>(value:T) -> (id:T, date:NSDate) {
        let now = NSDate()
        return (value, now)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tuple1 = makeTuple(value: "abc")
        let tuple2 = makeTuple(value: 123)
        print(tuple1)
        print(tuple2)
        print(tuple1.id)
        print(tuple2.date)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

