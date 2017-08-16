//
//  ViewController.swift
//  struct_protocol
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

// Monster 프로토콜
protocol Monster {
    var monsterName:String {get}
    var hp:Int {get set}
    mutating func updateHP(pt:Int)
}

class ViewController: UIViewController {
    
    // Monster 프로토콜을 채용하고 있는 Bokemon 구조체
    struct Bokemon: Monster {
        // 프로퍼티（프로토콜 준거）
        private(set) var monsterName:String // 접근권이 리드온리
        var hp:Int
        // hp를 변경하는 메서드
        mutating func updateHP(pt:Int) {
            hp += pt
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // 몬스터를 만든다
        var aMonster = Bokemon(monsterName: "스위피", hp: 200)
        print(aMonster.monsterName)
        print("HP 포인트 \(aMonster.hp)")
        // HP에 30 포인트 더한다
        aMonster.updateHP(pt: 30)
        print("HP 포인트 \(aMonster.hp)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

