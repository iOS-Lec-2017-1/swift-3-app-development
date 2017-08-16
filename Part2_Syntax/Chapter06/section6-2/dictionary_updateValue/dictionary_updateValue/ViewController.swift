//
//  ViewController.swift
//  dictionary_updateValue
//


import UIKit

class ViewController: UIViewController {
    // members 사전 선언
    var members = [String:Int]()
    
    // 사전 members 값을 추가, 변경한다
    func updateMembers(theKey:String, newValue:Int) {
        if let oldValue = members.updateValue(newValue, forKey: theKey){
            // 키가 있을 때는 값을 갱신
            print("\(theKey) 값을 \(oldValue)에서 \(newValue)로 갱신했습니다.")
        } else {
            // 키가 없을 때는 요소를 추가
            print("\(theKey):\(newValue)를 추가했습니다.")
        }
        print(members)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 처음 값을 대입
        members = ["서울":15,"부산":12,"독도":9]
        // 부산 값을 수정한다
        updateMembers(theKey: "부산", newValue: 17)
        // 키가 없는 대전을 추가한 경우
        updateMembers(theKey: "대전", newValue: 14)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

