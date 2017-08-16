//
//  ViewController.swift
//  gestureRecognizer_drag_color
//
//  Created by yoshiyuki oshige on 2016/09/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 0〜360
    var angle:CGFloat = 180.0
    
    @IBAction func dragColor(_ sender: UIPanGestureRecognizer) {
        // 드래그한 양을 알아본다
        let translation = sender.translation(in: view)
        // 수평 방향의 이동량
        if translation.x>0 {
            // 오른쪽 방향으로 드래그하면 색상환을 오른쪽 방향
            angle -= 1.0
        } else {
            // 왼쪽 방향으로 드래그하면 색상환을 왼쪽 방향
            angle += 1.0
        }
        
        // 0〜360 사이에서 돈다
        if angle < 0 {
            angle += 360
        } else if angle > 360 {
            angle -= 360
        }
        
        // 뷰 배경색을 변경한다
        let color = UIColor(hue: angle/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 처음 색을 합한다
        view.backgroundColor = UIColor(hue: angle/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

