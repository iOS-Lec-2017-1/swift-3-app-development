//
//  ViewController.swift
//  uiButton_image
//
//  Created by yoshiyuki oshige on 2016/08/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 버튼으로 실행하는 메서드
    func hello(_ sender:UIButton) {
        print("헬로")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 커스텀 타입의 버튼을 만든다
        let myButton = UIButton(type: .custom)
        // 영역
        myButton.frame = CGRect(x: 50, y: 100, width: 120, height: 50)
        // 버튼 이미지
        let image1 = UIImage(named: "btnNormal")
        let image2 = UIImage(named: "btnHighlighted")
        myButton.setImage(image1, for: .normal)
        myButton.setImage(image2, for: .highlighted)
        // 타이틀
        myButton.setTitle("Hello", for: .normal)
        myButton.setTitleColor(UIColor.black, for: .normal)
        // 버튼으로 실행하는 메서드
        myButton.addTarget(self, action: #selector(ViewController.hello(_:)), for: UIControlEvents.touchUpInside)
        // 뷰에 추가한다
        self.view.addSubview(myButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

