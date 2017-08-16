//
//  ViewController.swift
//  uiTextField_returnKey
//
//  Created by yoshiyuki oshige on 2016/09/02.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // myTextField 델리게이트가 된다
        myTextField.delegate = self
    }
    
    // 다음문장 키가 눌렸다（델리게이트 메서드）
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 키보드를 내린다
        view.endEditing(true)
        return false // 개행은 입력하지 않는다
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

