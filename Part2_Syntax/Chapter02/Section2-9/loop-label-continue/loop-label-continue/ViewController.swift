//
//  ViewController.swift
//  loop-label-continue
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // yloop List 루프를 중단하고 xloop 루프를 계속한다
        
        xloop:for x in 0...3 {
            yloop:for y in 0...3 {
                if (x < y){
                    print("----------")
                    continue xloop
                }
                print((x,y))
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

