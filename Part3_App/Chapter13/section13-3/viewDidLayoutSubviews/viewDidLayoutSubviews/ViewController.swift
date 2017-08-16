//
//  ViewController.swift
//  viewDidLayoutSubviews
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myCar: UIImageView!
    // 홈 좌표를 정한다
    let homePoint = CGPoint(x:100, y:150)
    
    // 홈으로 돌아간다
    @IBAction func goHome(_ sender: Any) {
        myCar.center = homePoint
    }
    
    // 오른쪽으로 나아간다
    @IBAction func move(_ sender: Any) {
        myCar.center.x += 10
    }
    
    // 시작 시에 홈으로 이동한다
    override func viewDidLayoutSubviews() {
        myCar.center = homePoint
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

