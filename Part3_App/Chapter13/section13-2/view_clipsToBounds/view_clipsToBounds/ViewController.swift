//
//  ViewController.swift
//  view_clipsToBounds
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // myView를 만든다
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.red
        
        // 이미지 뷰를 만든다
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "flower")
        // 이미지를 축소해 전체를 표시한다
        imageView.contentMode = .scaleAspectFit
        // myView 안에서의 좌표
        imageView.center = CGPoint(x: 80, y: 80)
        
        // myView의 서브 뷰로 한다
        myView.addSubview(imageView)
        // 서브 뷰를 클리핑해 표시한다
        myView.clipsToBounds = true
        
        // myView를 화면에 표시한다
        myView.center = CGPoint(x: 100, y: 100)
        view.addSubview(myView)
        
        
       }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

