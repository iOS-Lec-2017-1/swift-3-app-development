//
//  ViewController.swift
//  uiScrollView_keyboard
//
//  Created by yoshiyuki oshige on 2016/09/19.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // 스크롤뷰
    @IBOutlet weak var myScrollView: UIScrollView!
    
    // 스크롤뷰의 서브뷰
    @IBOutlet weak var contentView: UIView!
    
    // 모든 텍스트 필드의 배열（Outlet Collection）
    @IBOutlet var myTextFields: [UITextField]!
    
    // 편집 중인 텍스트 필드
    var editingField:UITextField?
    
    // 겹쳐있는 높이
    var overlap:CGFloat = 0.0
    var lastOffsetY:CGFloat = 0.0
    
    // 편집 시작
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 편집 중인 텍스트 필드
        editingField = textField
    }
    
    // 편집 종료
    func textFieldDidEndEditing(_ textField: UITextField) {
        editingField = nil
    }
    
    
    // 다음문장 입력으로 키보드를 내린다
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        // 개행 코드는 입력하지 않는다
        return false
    }
    
    // 뷰 탭으로 키보드를 내린다
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 스와이프로 스크롤 시켜 키보드를 내린다
        myScrollView.keyboardDismissMode = .onDrag
        
        // 스크롤 뷰 영역을 지정한다
        let scrollFrame = CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height-20)
        myScrollView.frame = scrollFrame
        // 컨텐츠 사이즈를 지정한다
        let contentRect  = contentView.bounds
        myScrollView.contentSize = CGSize(width:contentRect.width, height:contentRect.height)
        
        // 모든 텍스트 필드의 델리게이트가 된다
        for fld in myTextFields {
            fld.delegate = self
        }
        
        // 디폴트 통지 센터를 구한다
        let notification = NotificationCenter.default
        
        
        // 키보드의 frame이 변화했다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardChangeFrame(_:)),
                                 name: NSNotification.Name.UIKeyboardDidChangeFrame, object: nil)
        // 키보드를 등록했다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardWillShow(_:)),
                                 name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        // 키보드가 퇴장한다
        notification.addObserver(self,
                                 selector: #selector(ViewController.keyboardDidHide(_:)),
                                 name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    // 키보드의 frame이 변화했다
    func keyboardChangeFrame(_ notification: Notification) {
        // 편집 중인 텍스트 필드가 없는 경우는 중단한다
        guard let fld = editingField else {
            return
        }
        // 키보드의 frame을 알아본다
        let userInfo = (notification as NSNotification).userInfo!
        let keybordFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        // 텍스트 필드의 frame을 키보드와 같은 좌표계로 한다
        let fldFrame = view.convert(fld.frame, from: contentView)
        
        // 편집 중인 텍스트 필드가 키보드와 겹쳐있지 않은지 알아본다
        overlap =  fldFrame.maxY - keybordFrame.minY + 5
        if overlap > 0 {
            // 키보드로 가려져 있는 부분만 스크롤한다
            overlap += myScrollView.contentOffset.y
            myScrollView.setContentOffset(CGPoint(x: 0, y: overlap), animated: true)
            
        }
    }
    
    func keyboardWillShow(_ notification: Notification) {
        // 현재 스크롤 양을 저장해둔다
        lastOffsetY = myScrollView.contentOffset.y
    }
    
    // 키보드가 가려졌다
    func keyboardDidHide(_ notification: Notification) {
        // 스크롤을 원래대로 되돌린다
        let baseline =  (contentView.bounds.height -  myScrollView.bounds.height)
        lastOffsetY = min(baseline, lastOffsetY)
        myScrollView.setContentOffset(CGPoint(x: 0, y: lastOffsetY), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
