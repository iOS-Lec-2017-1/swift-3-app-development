//
//  ViewController.swift
//  gestureRecognizer_tap
//
//  Created by yoshiyuki oshige on 2016/09/10.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Tap Gesture Recognaizer와 Action 접속한다
    @IBAction func tapDragonfly(_ sender: UITapGestureRecognizer) {
        // 탭된 잠자리
        let dragonfly = sender.view!
        // 화면의 랜덤 위치로 이동한다
        let newX = arc4random_uniform(UInt32(view.frame.width))
        let newY = arc4random_uniform(UInt32(view.frame.height))
        dragonfly.center = CGPoint(x: Double(newX), y: Double(newY))
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

