//
//  ViewController.swift
//  nortificationCenter_keyboard
//
//  Created by yoshiyuki oshige on 2016/09/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 텍스트 파일의 패스
    let thePath = NSHomeDirectory()+"/Documents/myTextfile.txt"
    // 텍스트 뷰의 frame
    var originalFrame:CGRect?
    // 텍스트 뷰와 Outlet 접속한다
    @IBOutlet weak var myTextView: UITextView!
    
    // 편집 취소 버튼
    @IBAction func cancel(_ sender: Any) {
        // 키보드를 내린다
        view.endEditing(true)
        // 파일로부터 읽어 들인다
        readFromFile()
    }
    
    // 파일 저장 버튼
    @IBAction func saveToFile(_ sender: Any) {
        // 키보드를 내린다
        view.endEditing(true)
        // 저장할 텍스트 데이터
        let textData = myTextView.text
        // 텍스트 데이터 저장을 시도한다
        do {
            try textData?.write(toFile: thePath, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("저장에 실패 \n \(error)")
        }
    }
    
    // 파일로부터 읽어 들인다
    func readFromFile() {
        // 텍스트 데이터 읽어 들이기를 시도한다
        do {
            let textData = try String(contentsOfFile: thePath, encoding: String.Encoding.utf8)
            // 읽어 들이기를 성공하면 표시한다
            myTextView.text = textData
        } catch let error as NSError {
            // 에러 메세지를 써 넣습니다
            print("읽어 들이기 실패 \n \(error)")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // 텍스트 뷰의 원래 frame을 저장한다
        originalFrame = myTextView.frame
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 파일로부터 읽어 들인다
        readFromFile()
        
        // 통지 센터의 오브젝트를 만든다
        let notification = NotificationCenter.default
        
        // 키보드가 등장했다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardDidShow(_:)),
                                 name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        // 키보드의 frame이 갱신되었다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardChangeFrame(_:)),
                                 name: NSNotification.Name.UIKeyboardDidChangeFrame, object: nil)
        // 키보드가 퇴장했다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardDidHide(_:)),
                                 name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    // 키보드가 표시되었을 때 실행
    func keyboardDidShow(_ notification: Notification) {
        // keyboardChangeFrame도 발생하므로 그쪽에서 처리한다
    }
    
    // 키보드 사이즈가 변화했다
    func keyboardChangeFrame(_ notification: Notification) {
        
        // 키보드 frame을 알아본다
        let userInfo = (notification as NSNotification).userInfo!
        let keybordFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        // 키보드로 가려지지 않게 텍스트 뷰의 높이를 변경한다
        var textViewFrame = myTextView.frame
        textViewFrame.size.height = keybordFrame.minY - textViewFrame.minY - 5
        myTextView.frame = textViewFrame
    }
    
    // 키보드가 퇴장했다
    func keyboardDidHide(_ notification: Notification) {
        // 텍스트 뷰의 사이즈를 반환한다
        myTextView.frame = originalFrame!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

