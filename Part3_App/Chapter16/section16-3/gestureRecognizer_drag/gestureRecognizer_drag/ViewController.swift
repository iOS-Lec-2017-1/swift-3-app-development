//
//  ViewController.swift
//  gestureRecognizer_drag
//
//  Created by yoshiyuki oshige on 2016/09/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func dragging(_ sender: UIPanGestureRecognizer) {
        // 드래그하고 있는 뷰
        let dragonfly = sender.view!
        // 손가락 좌표에 맞춘다
        dragonfly.center = sender.location(in: self.view)
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

