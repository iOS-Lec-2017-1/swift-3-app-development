//
//  ViewController.swift
//  while-loop
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 파워가 100 미만에서 티켓이 있으면 파워와 교환한다
        var tickets = 5
        var power = 30
        while (tickets>0)&&(power<100){
            tickets -= 1
            power += 20
        }
        print("power \(power), 남은 티켓 \(tickets)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

