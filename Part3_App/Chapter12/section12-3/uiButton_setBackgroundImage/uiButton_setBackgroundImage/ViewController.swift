//
//  ViewController.swift
//  uiButton_setBackgroundImage
//
//  Created by yoshiyuki oshige on 2016/08/30.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 버튼으로 실행하는 메서드
    func ok(_ sender:UIButton) {
        print("OK")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼을 만든다
        let okButton = UIButton()
        // 영역
        okButton.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        // 배경 이미지
        let bkgImage = UIImage(named: "o")
        okButton.setBackgroundImage(bkgImage, for: .normal)
        // 타이틀
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(UIColor.black, for: .normal)
        // 버튼으로 실행하는 메서드
        okButton.addTarget(self, action: #selector(ViewController.ok(_:)), for: UIControlEvents.touchUpInside)
        // 뷰에 추가한다
        view.addSubview(okButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

