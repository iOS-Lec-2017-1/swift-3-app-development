//
//  ViewController.swift
//  uiBezierPath_fillRule
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func drawPathImage() -> UIImage {
        // 이미지 처리 시작
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        // 사각형 패스
        let boxRect = CGRect(x: 80, y: 200, width: 150, height: 150)
        let boxPath = UIBezierPath(rect: boxRect)
        // 위 원의 패스
        let ovalRect1 = CGRect(x: 50, y: 150, width: 150, height: 150)
        let ovalPath1 = UIBezierPath(ovalIn: ovalRect1)
        // 아래 원의 패스
        let ovalRect2 = CGRect(x: 120, y: 250, width: 150, height: 150)
        let ovalPath2 = UIBezierPath(ovalIn: ovalRect2)
        
        // 패스를 하나로 합한다
        let drawPath = UIBezierPath()
        drawPath.append(boxPath)
        drawPath.append(ovalPath1)
        drawPath.append(ovalPath2)
        UIColor.red.setFill()
        // 겹침이 홀수 회인 영역은 칠하지 않는다
        drawPath.usesEvenOddFillRule = true
        drawPath.fill()
        // 이미지 컨텍스트로부터 UIImage를 만든다
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        // 이미지 처리 종료
        UIGraphicsEndImageContext()
        return image!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 도형 이미지를 만든다
        let drawImage = drawPathImage()
        // 이미지 뷰에 설정한다
        let drawView = UIImageView(image: drawImage)
        // 화면에 표시한다
        view.addSubview(drawView)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

