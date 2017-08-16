//
//  ViewController.swift
//  view_center
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCar: UIImageView!

    @IBAction func goHome(_ sender: Any) {
        myCar.center = CGPoint(x:100, y:150)
    }
    
    // 오른쪽으로 나아간다
    @IBAction func move(_ sender: Any) {
        myCar.center.x += 10
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

