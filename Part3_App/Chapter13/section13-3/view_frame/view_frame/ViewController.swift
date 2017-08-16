//
//  ViewController.swift
//  view_frame
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPhoto: UIImageView!
    
    @IBAction func changedFrame(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        switch index {
        case 0 : // 크게 표시
            myPhoto.frame = CGRect(x: 30, y: 100, width: 320, height: 240)
        case 1 : // 작게 표시
            myPhoto.frame = CGRect(x: 110, y: 160, width: 160, height: 120)
        default :
            myPhoto.frame = CGRect(x: 30, y: 100, width: 320, height: 240)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 표시 모드 설정
        myPhoto.contentMode = .scaleAspectFill
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

