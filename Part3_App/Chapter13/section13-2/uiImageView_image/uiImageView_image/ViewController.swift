//
//  ViewController.swift
//  uiImageView_image
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 화면 배경색을 그레이로 한다
        self.view.backgroundColor = UIColor.lightGray
        
        // 이미지 뷰를 만든다
        let rect = CGRect(x: 0, y: 0, width: 300, height: 200)
        let imageView = UIImageView(frame: rect)
        // 이미지 표시 모드
        imageView.contentMode = .scaleAspectFit
        // 이미지 뷰에 이미지를 설정한다
        imageView.image = UIImage(named: "sheep.jpg")
        // 이미지 뷰의 좌표를 루트 뷰 중앙으로 설정한다
        imageView.center = self.view.center
        // 이미지 뷰를 루트 뷰에 추가(표시)한다
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

