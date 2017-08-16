//
//  ViewController.swift
//  uiAlertController_alert_textfield
//
//  Created by yoshiyuki oshige on 2016/09/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBAction func showAlert(_ sender: Any) {
        // 알람을 만든다
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        alert.title = "타이틀"
        alert.message = "메세지 글"
        
        // 텍스트 필드
        alert.addTextField{(textField) -> Void  in
            // 텍스트 필드의 델리게이트가 된다
            textField.delegate = self
        }
        
        // OK 버튼
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
            })
        )
        
        // 취소
        alert.addAction(
            UIAlertAction(
                title: "취소",
                style: .cancel,
                handler: nil)
        )
        
        // 알람을 표시한다
        self.present(
            alert,
            animated: true,
            completion: {
                // 표시 종료 후에 실행
                print("알람이 표시되었다")
            }
        )
    }
    
    // 텍스트 필드의 편집 종료（키보드를 내린다）
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text)
    }
    
    
    // 선택으로 실행되는 메서드
    func hello(_ msg:String) {
        print(msg)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
