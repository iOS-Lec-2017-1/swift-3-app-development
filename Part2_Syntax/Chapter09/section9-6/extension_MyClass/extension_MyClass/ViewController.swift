//
//  ViewController.swift
//  extension_MyClass
//
//  Created by yoshiyuki oshige on 2016/08/19.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class Player {
    var name:String = ""
    
    func hello() {
        print("아!" + name)
    }
}

extension Player {
    // name을 who에도 접근할 수 있게 한다
    var who:String {
        get{
            return name
        }
        set(value){
            name = value
        }
    }
    
    // 새로운 메서드를 추가한다
    func bye() {
        print("또 봐!" + name)
    }
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let obj = Player()
        obj.who = "금자"
        obj.hello()
        obj.bye()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


