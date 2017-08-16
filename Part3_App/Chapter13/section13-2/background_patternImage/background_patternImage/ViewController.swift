//
//  ViewController.swift
//  background_patternImage
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 패턴 이미지
        let image = UIImage(named: "stars.png")
        // 화면 배경색을 패턴 이미지로 한다
        self.view.backgroundColor = UIColor(patternImage: image!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

