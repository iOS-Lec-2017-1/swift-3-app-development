//
//  ViewController.swift
//  uiStackView_arrangedSubviews
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 스택뷰에 넣는 뷰를 준비한다
        let view1 = UIView()
        view1.backgroundColor = .lightGray
        let view2 = UIView()
        view2.backgroundColor = .gray
        // 사진 이미지뷰
        let photo1 = UIImageView(image: UIImage(named: "image/IMG_4048.jpg"))
        let photo2 = UIImageView(image: UIImage(named: "image/IMG_4202.jpg"))
        let photo3 = UIImageView(image: UIImage(named: "image/IMG_4854.jpg"))
        photo1.contentMode = .scaleAspectFill
        photo1.clipsToBounds = true
        photo2.contentMode = .scaleAspectFill
        photo2.clipsToBounds = true
        photo3.contentMode = .scaleAspectFill
        photo3.clipsToBounds = true
        
        // 스택뷰를 만든다
        let rect = CGRect(x: 0, y: 0, width: 300, height: 600)
        let stackView = UIStackView(frame: rect)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        // 스택뷰에 준비해둔 뷰를 추가한다
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(photo1)
        stackView.addArrangedSubview(photo2)
        stackView.addArrangedSubview(photo3)
        
        // 스택뷰를 화면 중앙에 표시한다
        stackView.center = self.view.center
        self.view.addSubview(stackView)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

