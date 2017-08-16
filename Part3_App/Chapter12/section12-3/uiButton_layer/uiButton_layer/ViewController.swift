//
//  ViewController.swift
//  uiButton_layer
//
//  Created by yoshiyuki oshige on 2016/08/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func hello(_ sender:UIButton) {
        print("헬로")
    }

    // 버튼을 만들어 표시한다
    func addButton() {
        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        // 빨간색 모서리가 둥근 사각형을 그린다
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("헬로", for: .normal)
        // 화면 아래 중앙에 표시한다
        myButton.layer.position = CGPoint(x: view.bounds.width/2, y:view.bounds.height-50)
        // 탭으로 hello()를 실행한다
        myButton.addTarget(self, action: #selector(ViewController.hello(_:)), for: .touchUpInside)
        
        // 버튼을 View에 추가한다
        view.addSubview(myButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 버튼을 만든다
        addButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

