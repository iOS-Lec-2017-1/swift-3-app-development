//
//  ViewController.swift
//  overload_calc
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // a,b의 인수
    func calc(a:Int, b:Int) -> Int {
        return a+b
    }
    
    // c, d의 인수
    func calc(c:Int, d:Int) -> Int {
        return c*d
    }
    
    // a, b,c의 인수
    func calc(a:Int, b:Int, c:Int) -> Int {
        return (a+b)*c
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3종류의 calc()을 시험한다
        let ans1 = calc(a: 2, b: 3)
        let ans2 = calc(c: 2, d: 3)
        let ans3 = calc(a: 2, b: 3, c: 4)
        
        print(ans1)
        print(ans2)
        print(ans3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

