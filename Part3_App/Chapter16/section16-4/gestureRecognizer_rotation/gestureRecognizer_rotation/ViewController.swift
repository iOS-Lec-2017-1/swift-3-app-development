//
//  ViewController.swift
//  gestureRecognizer_rotation
//
//  Created by yoshiyuki oshige on 2016/09/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 잠자리와 Outlet 접속한다
    @IBOutlet weak var dragonfly: UIImageView!
    // 마지막 회전 각도
    var lastRotation:CGFloat = 0.0
    
    // 뷰 로테이션으로 잠자리를 회전한다
    @IBAction func rotateDragonfly(_ sender: UIRotationGestureRecognizer) {
        
        switch sender.state {
        case .began:
            // 전 회의 회전 각도에서부터 시작한다
            sender.rotation = lastRotation
        case .changed:
            // 회전 각도에 잠자리를 맞춘다
            dragonfly.transform = CGAffineTransform(rotationAngle: sender.rotation)
        case .ended:
            // 회전 마지막에 회전 각도를 저장한다
            lastRotation = sender.rotation
        default:
            break
        }
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

