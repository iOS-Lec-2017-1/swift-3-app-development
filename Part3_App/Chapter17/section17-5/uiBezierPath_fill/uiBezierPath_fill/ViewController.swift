//
//  ViewController.swift
//  uiBezierPath_fill
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
        UIColor.lightGray.setFill() // 칠하는 색
        
        // 사각형 패스（닫힌 도형）
        let boxRect = CGRect(x: 100, y: 100, width: 150, height: 100)
        let boxPath = UIBezierPath(rect: boxRect)
        boxPath.lineWidth = 2
        boxPath.fill()  // 칠한다
        boxPath.stroke()
        
        // 베지에 곡선 패스（닫힌 도형）
        let curvePath = UIBezierPath()
        let pt0 = CGPoint(x: 80, y: 300)
        let pt1 = CGPoint(x: 300, y: 500)
        let cPt1 = CGPoint(x: 400, y: 300)
        let cPt2 = CGPoint(x: 100, y: 600)
        curvePath.move(to: pt0)
        curvePath.addCurve(to: pt1 , controlPoint1: cPt1 , controlPoint2: cPt2)
        curvePath.lineWidth = 2
        curvePath.fill() // 칠한다
        curvePath.stroke()
        
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

