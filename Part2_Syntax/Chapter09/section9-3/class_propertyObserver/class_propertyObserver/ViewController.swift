//
//  ViewController.swift
//  class_propertyObserver
//

import UIKit


class Player {
    var times = 0
    var level:Int {
        
        willSet {
            print("----------")
            print("willSet \(newValue)")
        }
        
        didSet {
            if oldValue != level {
                times += 1
                print("\(times)회째 갱신")
                print("\(oldValue) → \(level)")
            } else {
                print("값은 변환없음")
            }
        }
    }
    
    // 이니셜라이져
    init (){
        level = 0
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Player 클래스의 인스턴스를 만들어 시험한다ク
        let thePlayer = Player()
        thePlayer.level = 10
        thePlayer.level = 10 // 값이 변화하지 않으므로 카운트하지 않는다
        thePlayer.level = 15
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


