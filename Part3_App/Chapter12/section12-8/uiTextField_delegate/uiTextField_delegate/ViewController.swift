//
//  ViewController.swift
//  uiTextField_delegate
//
//  Created by yoshiyuki oshige on 2016/09/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // 텍스트 필드 프로퍼티 선언
    @IBOutlet weak var myTextField: UITextField!
    // 라벨 프로퍼티 선언
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // myTextField 델리게이트가 된다
        myTextField.delegate = self
        
    }
    
    // 텍스트 필드 값이 편집 중에 변경될 때 실행된다
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // 변경 후의 내용을 작성한다
        let tmpStr = textField.text! as NSString
        let replacedString = tmpStr.replacingCharacters(in: range, with: string)
        if replacedString == "" {
            // 변경 후 빈다면 라벨에 0을 표시한다
            myLabel.text = "0"
        } else {
            // 변경 후의 값을 계산해 라벨에 표시한다(25를 곱한 값)
            if let num = Int(replacedString) {
                myLabel.text = String(num * 25)
            }
            
        }
        // 텍스트 필드를 갱신한다
        return true
    }
    
    // 클리어 버튼으로 실행되는 델리게이트 메서드
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myLabel.text = "0"
        return true
    }
    
    // 화면 탭으로 키보드를 내린다
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        // 편집 종료로 키보드를 내린다
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


