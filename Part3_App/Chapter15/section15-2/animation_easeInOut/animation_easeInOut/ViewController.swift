//
//  ViewController.swift
//  animation_easeInOut
//
//  Created by yoshiyuki oshige on 2016/09/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 바다표범
    
    @IBOutlet weak var seal: UIImageView!
    
    // 뷰가 탭되면 실행
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        // 탭된 좌표를 알아본다
        let tapPoint = sender.location(in: view)
        
        // 지정한 직후 값이 되게 애니메이션한다
        UIView.animate(withDuration: 1.0, // 1초 간 재생
            delay: 0, // 기다리는 시간 없음
            options: [.curveEaseInOut], // 이즈인아웃
            animations: {
                // 탭한 좌표로 이동
                self.seal.center = tapPoint
            },
            completion: nil)
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

