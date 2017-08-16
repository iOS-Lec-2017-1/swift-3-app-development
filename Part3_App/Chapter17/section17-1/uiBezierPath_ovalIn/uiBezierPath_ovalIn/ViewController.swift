//
//  ViewController.swift
//  uiBezierPath_ovalIn
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 타원형의 도형 이미지를 만든다
    func makeOvalImage(witdh w:CGFloat, height h:CGFloat) -> UIImage {
        // 이미지 처리 시작
        let size = CGSize(width: w, height: h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        // 컨텍스트
        let context = UIGraphicsGetCurrentContext()
        
        // 사이즈를 정한다
        let ovalRect = CGRect(x: 0, y: 0, width: w, height: h)
        // 패스를 만든다
        let drawPath = UIBezierPath(ovalIn: ovalRect)
        // 색 칠하기
        context?.setFillColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
        // 패스를 칠한다
        drawPath.fill()
        
        // 이미지 컨텍스트로부터 UIImage를 만든다
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // 이미지 처리 종료
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 타원형 이미지를 만든다
        let drawImage = makeOvalImage(witdh: 200, height: 150)
        // 이미지 뷰에 설정한다
        let drawView = UIImageView(image: drawImage)
        // 화면에 표시한다
        drawView.center = view.center
        view.addSubview(drawView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

