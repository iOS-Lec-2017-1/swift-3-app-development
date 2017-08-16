//
//  ViewController.swift
//  class_private
//
//  Created by yoshiyuki oshige on 2016/08/19.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Game 클래스의 플레이어를 만든다
        let player1 = Game()
        let player2 = Game()
        
        // 플레이어가 득점을 획득한다
        player1.addPoint(value: 5)
        player2.addPoint(value: 7)
        
        // 플레이어 레벨을 확인한다
        print("player1：레벨 \(player1.level)")
        print("player2：레벨 \(player2.level)")
        
        /* 다음 식은 접근권이 없기 때문에 오류가 발생합니다.*/
//        player1.point = 10
//
//        player1.level = 5

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

