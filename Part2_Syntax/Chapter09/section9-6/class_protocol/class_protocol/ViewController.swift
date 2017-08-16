//
//  ViewController.swift
//  class_protocol
//
//  Created by yoshiyuki oshige on 2016/08/20.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyGame 클래스의 인스턴스를 만든다
        let myGameObj = MyGame()
        // 게임 시작
        myGameObj.hit()
        print(myGameObj.gamePoint)
        myGameObj.miss()
        print(myGameObj.gamePoint)
        myGameObj.hit()
        print(myGameObj.gamePoint)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

