//
//  ViewController.swift
//  animation_transform_alpha
//
//  Created by yoshiyuki oshige on 2016/09/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        // flower를 만들다
        let flower = UIImageView(image: UIImage(named: "flower"))
        // 투명도를 0으로 한다
        flower.alpha = 0
        
        // 0.2 배 크기로 한다
        let scaleTransform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        // -π/2 회전한다
        let rotationTransform = CGAffineTransform(rotationAngle: CGFloat(-M_PI_2))
        // 트랜스폼을 더해 합한다
        let transform = scaleTransform.concatenating(rotationTransform)
        // flower를 변형시킨다
        flower.transform = transform
        
        // 탭된 좌표에 flower를 추가한다
        flower.center = sender.location(in: self.view)
        view.addSubview(flower)
        
        // 애니메이션
        UIView.animate(withDuration: 1.0, // 1초간 재생
            delay: 0, // 기다리는 시간 없음
            options: [.curveEaseInOut], // 인즈인아웃
            animations: {
                // 투명도를 1로 한다
                flower.alpha = 1.0
                // 변형을 반환한다
                flower.transform = .identity
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

