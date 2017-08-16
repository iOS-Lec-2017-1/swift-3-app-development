//
//  ViewController.swift
//  uiBezierPath_rect
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 사각형의 도형 이미지를 만든다
    func makeBoxImage(witdh w:CGFloat, height h:CGFloat) -> UIImage {
        // 그리기 사이즈
        let size = CGSize(width: w, height: h)
        // 그리기 시작
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        // 컨텍스트
        let context = UIGraphicsGetCurrentContext()
        
        // 사이즈를 정한다
        let drawRect = CGRect(x: 0, y: 0, width: w, height: h)
        // 패스를 만든다（사각형）
        let drawPath = UIBezierPath(rect: drawRect)
        
        // 색 칠하기
        context?.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // 패스를 칠한다
        drawPath.fill()
        // 선 색
        context?.setStrokeColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        // 패스를 그린다
        drawPath.stroke()
        
        // 이미지 컨텍스트로부터 UIImage를 만든다
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // 이미지 처리 종료
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 사각형 이미지를 만든다
        let boxImage = makeBoxImage(witdh: 200, height: 150)
        // 이미지 뷰에 설정한다
        let boxView = UIImageView(image: boxImage)
        // 화면에 표시한다
        boxView.center = view.center
        view.addSubview(boxView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
