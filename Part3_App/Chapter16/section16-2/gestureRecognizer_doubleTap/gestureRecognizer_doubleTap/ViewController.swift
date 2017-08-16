//
//  ViewController.swift
//  gestureRecognizer_doubleTap
//
//  Created by yoshiyuki oshige on 2016/09/10.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 더블탭으로 실행한다
    @IBAction func doubleTapFlower(_ sender: UITapGestureRecognizer) {
        // 탭된 뷰
        let flower = sender.view!
        // 변형되어 있는지 여부
        if flower.transform.isIdentity  {
            // ３배로 확대한다
            flower.transform = CGAffineTransform(scaleX: 3, y: 3)
        } else {
            // 원래대로 되돌린다
            flower.transform = CGAffineTransform.identity
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

