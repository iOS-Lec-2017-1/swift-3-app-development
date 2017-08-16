//
//  ViewController.swift
//  argument_hello
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // hello()를 정의한다
    func hello(user:String) -> String {
        return ("\(user)씨, 헬로")
    }
    
    // bye()를 정의한다
    func bye(user:String) -> String {
        return ("\(user)씨, 안녕!")
    }
    
    // 함수를 인수로 받아 실행한다
    func message(user:String, msgFunc:(String) -> String) -> String {
        let msg = msgFunc(user)
        return msg
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // message()의 인수에 함수 hello()와 bye()를 전달한다
        let msg1 = message(user: "로사", msgFunc: hello)
        let msg2 = message(user: "쥬쥬", msgFunc: bye)
        print(msg1)
        print(msg2)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

