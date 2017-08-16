//
//  ViewController.swift
//  addGestureRecognizer_tap
//
//  Created by yoshiyuki oshige on 2016/09/10.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hello()를 실행하는 탭 제스처 리코나이저
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(self.hello(_:)))
        // 뷰를 만든다
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 80, height: 80))
        myView.backgroundColor = UIColor.green
        // tag에 번호를 붙인다
        myView.tag = 1
        
        // 뷰에 탭 제스처 리코나이저를 추가한다
        myView.addGestureRecognizer(tapGesture)
        view.addSubview(myView)
    }
    
    // 탭 제스처 리코나이저로 실행하는 메서드
    func hello(_ sender:UITapGestureRecognizer) {
        // tag 번호를 알아본다
        let tagNo = sender.view?.tag
        print("헬로", tagNo!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


