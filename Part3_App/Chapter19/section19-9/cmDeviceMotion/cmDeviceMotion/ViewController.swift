//
//  ViewController.swift
//  cmDeviceMotion
//
//  Created by yoshiyuki oshige on 2016/09/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    // 자이로스코프 측정값
    @IBOutlet weak var xGyroLabel: UILabel!
    @IBOutlet weak var yGyroLabel: UILabel!
    @IBOutlet weak var zGyroLabel: UILabel!
    // 가속도 측정값
    @IBOutlet weak var xAccelLabel: UILabel!
    @IBOutlet weak var yAccelLabel: UILabel!
    @IBOutlet weak var zAccelLabel: UILabel!
    // 가속도 벡터
    @IBOutlet weak var xGravityLabel: UILabel!
    @IBOutlet weak var yGravityLabel: UILabel!
    @IBOutlet weak var zGravityLabel: UILabel!
    // 자세 측정값
    @IBOutlet weak var pitchLabel: UILabel!
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var yawLabel: UILabel!
    
    
    // CoreMotion 매니저를 만든다
    let cmManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 큐를 실행하는 간격(초수)
        cmManager.deviceMotionUpdateInterval = 0.1
        // 큐로 실행하는 클로저
        let handler:CMDeviceMotionHandler = {(motionData:CMDeviceMotion?, error:Error?) -> Void in
            self.motionAnimation(motionData, error: error as NSError?)
        }
        // 갱신으로 실행하는 큐를 등록해 모션 센서를 시작한다
        cmManager.startDeviceMotionUpdates(to: OperationQueue.main, withHandler: handler)
    }
    
    // 디바이스 모션 센서에서 정기적으로 실행하는 메서드
    func motionAnimation(_ motionData:CMDeviceMotion?, error:NSError?) {
        if let motion = motionData {
            
            // 자이로스코프(회전각속도)
            // X축 회전 회전각속도
            var gyroX = motion.rotationRate.x
            gyroX = round(gyroX*100)/100
            xGyroLabel.text = String(gyroX)
            // Y축 회전 회전각속도
            var gyroY = motion.rotationRate.y
            gyroY = round(gyroY*100)/100
            yGyroLabel.text = String(gyroY)
            // Z축 회전 회전각속도
            var gyroZ = motion.rotationRate.z
            gyroZ = round(gyroZ*100)/100
            zGyroLabel.text = String(gyroZ)
            
            
            // 가속도 센서（이동가속도）
            // X축 방향 가속도
            var accelX = motion.userAcceleration.x
            accelX = round(accelX*1000)/1000
            xAccelLabel.text = String(accelX)
            // Y축 방향 가속도
            var accelY = motion.userAcceleration.y
            accelY = round(accelY*1000)/1000
            yAccelLabel.text = String(accelY)
            // Z축 방향 가속도
            var accelZ = motion.userAcceleration.z
            accelZ = round(accelZ*1000)/1000
            zAccelLabel.text = String(accelZ)
            
            // 중력 벡터
            // 가속도의 X 성분
            var gravityX = motion.gravity.x
            gravityX = round(gravityX*100)/100
            xGravityLabel.text = String(gravityX)
            // 가속도의 Y 성분
            var gravityY = motion.gravity.y
            gravityY = round(gravityY*100)/100
            yGravityLabel.text = String(gravityY)
            // 가속도의 Z 성분
            var gravityZ = motion.gravity.z
            gravityZ = round(gravityZ*100)/100
            zGravityLabel.text = String(gravityZ)
            
            
            
            // 자세 센서（회전각도 라디언）
            // 피치（X축 도는 회전 각도）
            var pitch = motion.attitude.pitch
            pitch = round(pitch*100)/100
            pitchLabel.text = String(pitch)
            // 롤（Y축 도는 회전 각도）
            var roll = motion.attitude.roll
            roll = round(roll*100)/100
            rollLabel.text = String(roll)
            // 요（Z축 도는 회전 각도）
            var yaw = motion.attitude.yaw
            yaw = round(yaw*100)/100
            yawLabel.text = String(yaw)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

