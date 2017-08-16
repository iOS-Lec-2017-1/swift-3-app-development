//
//  ViewController.swift
//  timer_car
//
//  Created by yoshiyuki oshige on 2016/09/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 차
    @IBOutlet weak var car: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 타이머를 만든다
        Timer.scheduledTimer(
            timeInterval: 0.1, // 반복하는 간격（초）
            target: self,
            selector: #selector(self.step), // 실행하는 메서드
            userInfo: nil,
            repeats: true // 반복 재생한다
        )
    }
    
    // 타이머로 정기적으로 호출되는 메서드
    func step() {
        // 수평방향으로 이동
        car.center.x += 10
        // 오른쪽 가장자리에서 밖으로 나가면
        let carWidth = car.bounds.width
        if car.center.x>(view.bounds.width + carWidth/2) {
            // 왼쪽 가장자리의 바로 앞으로 되돌아간다
            car.center.x = -carWidth
            // y 좌표는 랜덤인 높이로 변경
            let viewH = view.bounds.height
            car.center.y = CGFloat(arc4random_uniform(UInt32(viewH)))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
