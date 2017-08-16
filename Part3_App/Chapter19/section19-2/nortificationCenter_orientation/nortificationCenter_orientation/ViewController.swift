//
//  ViewController.swift
//  nortificationCenter_orientation
//
//  Created by yoshiyuki oshige on 2016/09/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelABC: UILabel!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 통지 센터 오브젝트를 만든다
        let notification = NotificationCenter.default
        // 디바이스 방향이 바뀌었다
        notification.addObserver(self,
                                 selector: #selector(self.changedDeviceOrientation(_:)),
                                 name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    // 이벤트로 호출되는 메서드
    func changedDeviceOrientation(_ notification :Notification) {
        // 디바이스를 구한다
        let device = UIDevice.current
        // 디바이스 방향을 알아본다
        switch device.orientation {
        case .portrait: // 포트레이트
            // 라벨을 0도로 회전
            rotateLabel(0)
        case .portraitUpsideDown: // 거꾸로됨
            // 라벨을 180도로 회전
            rotateLabel(CGFloat(M_PI))
        case .landscapeLeft: // 디바이스는 왼쪽 회전
            // 라벨은 90도로 회전
            rotateLabel(CGFloat(M_PI_2))
        case .landscapeRight: // 디바이스는 오른쪽 회전
            // 라벨은 -90도로 회전
            rotateLabel(CGFloat(-M_PI_2))
        default:
            break
        }
    }
    
    // 라벨을 회전시킨다
    func rotateLabel(_ radian :CGFloat) {
        let transform = CGAffineTransform(rotationAngle: radian)
        labelABC.transform = transform
        labelA.transform = transform
        labelB.transform = transform
        labelC.transform = transform
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



