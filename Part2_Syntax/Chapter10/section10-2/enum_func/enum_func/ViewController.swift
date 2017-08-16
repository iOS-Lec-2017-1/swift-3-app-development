//
//  ViewController.swift
//  enum_func
//

import UIKit

class ViewController: UIViewController {

    
    enum Signal:String {
        case Green = "녹색"
        case Red = "빨간색"
        
        // 값을 색이름（rawValue）으로 반환한다
        var color:String {
            return self.rawValue
        }
        
        // 설명문을 반환하는 타입 메서드
        static func description() -> String {
            return "Green 또는 Red 시그널입니다"
        }
        
        // 값을 Bool로 반환한다（Green일 때 true 그렇지 않을 때 false）
        func isRun() -> Bool{
            if self == .Green {
                return true
            } else  {
                return false
            }
        }
        
        // Green이라면 Red, Red라면 Green으로 값을 바꾼다
        mutating func turn(){
            if self == .Green {
                self = .Red
            } else {
                self = .Green
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 타입 메서드를 실행한다
        let text = Signal.description()
        print(text)
        // 처음은 Green으로 시작한다
        var lamp = Signal.Green
        print(lamp.color)
        print(lamp.isRun())
        print("---- 값을 반전한다 ----")
        lamp.turn()
        print(lamp.color)
        print(lamp.isRun())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

