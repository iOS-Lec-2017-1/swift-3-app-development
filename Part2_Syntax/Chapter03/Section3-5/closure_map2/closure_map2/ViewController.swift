//
//  ViewController.swift
//  closure_map2
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colors = ["Red", "Blue", "GREEN"]
        // 모든 문자를 소문자로 한다
        let colorsSmall = colors.map{str in str.lowercased()}
        print(colors)
        print(colorsSmall)
        
        
        let colorsSmall2 = colors.map{$0.lowercased()}
        print(colors)
        print(colorsSmall2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

