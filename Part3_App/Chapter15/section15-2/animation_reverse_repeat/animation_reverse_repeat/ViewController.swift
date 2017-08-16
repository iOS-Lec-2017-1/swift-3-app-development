//
//  ViewController.swift
//  animation_reverse_repeat
//
//  Created by yoshiyuki oshige on 2016/09/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 바다표범을 뷰에 추가한다
        let seal = UIImageView(image: UIImage(named: "seal"))
        seal.center = CGPoint(x: 50, y: 150)
        view.addSubview(seal)
        
        // 화면을 가로로 왔다 갔다 한다
        UIView.animate(withDuration: 1.0, // 1초 간 재생
            delay: 0, // 기다리는 시간 없음
            options: [.curveEaseInOut, // 이즈인아웃
                      .autoreverse, // 반대 재생
                      .repeat], // 반복
            animations: {
                // 화면의 오른쪽 끝으로 이동한다
                seal.center.x = self.view.frame.width - 50
            },
            completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

