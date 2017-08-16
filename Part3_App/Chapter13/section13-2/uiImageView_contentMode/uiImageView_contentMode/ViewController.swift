//
//  ViewController.swift
//  uiImageView_contentMode
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 화면의 배경색을 회색으로 한다
        self.view.backgroundColor = UIColor.lightGray
        
        // 이미지 뷰를 만든다
        let rect = CGRect(x: 0, y: 0, width: 300, height: 200)
        let imageView = UIImageView(frame: rect)
        
        // 이미지를 축소하지 않고 중앙을 클리핑해서 표시한다
        imageView.contentMode = .center
        imageView.clipsToBounds = true
        
        // 이미지 뷰에 이미지를 설정한다
        imageView.image = UIImage(named: "sheep.jpg")
        // 이미지 뷰를 루트 뷰 중앙에 설정한다
        imageView.center = self.view.center
        // 이미지 뷰를 루트 뷰에 추가(표시)한다
        self.view.addSubview(imageView)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

