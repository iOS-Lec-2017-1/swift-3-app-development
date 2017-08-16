//
//  ViewController.swift
//  enum_var
//

import UIKit

class ViewController: UIViewController {

    enum Ticket {
        // 티켓 종류
        case Gold, A, B
        // 타입 프로퍼티
        static var name = "입장권"

        // 좌석（리드온리 변수）
        var area:String {
            get {
                switch self {
                case .Gold:
                    return "골드석"
                case .A:
                    return "A석"
                case .B:
                    return "B석"
                }
            }
        }
        
        // 가격（리드온리 변수）
        var price:Int {
            get {
                switch self {
                case .Gold:
                    return 240000
                case .A:
                    return 50000
                case .B:
                    return 20000
                }
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 티켓명 변경
        Ticket.name = "VIP 입장권"
        
        // 티켓을 얻는다
        let ticket1 = Ticket.A
        let ticket2 = Ticket.Gold
        
        // 티켓 확인
        print(Ticket.name, ticket1.area, ticket1.price)
        print(Ticket.name, ticket2.area, ticket2.price)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

