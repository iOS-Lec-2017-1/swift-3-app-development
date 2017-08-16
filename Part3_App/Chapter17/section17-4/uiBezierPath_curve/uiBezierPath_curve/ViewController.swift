//
//  ViewController.swift
//  uiBezierPath_curve
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func drawLine() -> UIImage {
        // 위 그림에서 사용하는 점
        let a = CGPoint(x: 50, y: 70)
        let b = CGPoint(x: 250, y: 100)
        let c = CGPoint(x: 120, y: 200)
        // 아래 그림에서 사용하는 점
        let d = CGPoint(x: 50, y: 300)
        let e = CGPoint(x: 250, y: 300)
        let f = CGPoint(x: 250, y: 500)
        let g = CGPoint(x: 100, y: 550)
        
        // 이미지 처리 시작
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        // 보조선을 긋는다
        UIColor.black.setStroke()
        let linePath = UIBezierPath()
        // 직선 패스를 추가해 간다
        linePath.append(makeLinePath(a, b))
        linePath.append(makeLinePath(b, c))
        linePath.append(makeLinePath(d, e))
        linePath.append(makeLinePath(f, g))
        linePath.lineWidth = 1.0
        // 점선을 그린다
        linePath.setLineDash([2.0, 2.0], count: 2, phase: 0.0)
        linePath.stroke()
        
        // 베지에 곡선 1을 그린다
        UIColor.red.setStroke()
        let curvePath1 = UIBezierPath()
        // 시작점으로 이동
        curvePath1.move(to: a)
        // 컨트롤 포인트가 1개인 베지에 곡선
        curvePath1.addQuadCurve(to: c , controlPoint: b)
        curvePath1.lineWidth = 2
        curvePath1.stroke()
        
        // 베지에 곡선 ２를 그린다
        UIColor.blue.setStroke()
        let curvePath2 = UIBezierPath()
        // 시작점으로 이동
        curvePath2.move(to: d)
        // 컨트롤 포인트가 2개인 베지에 곡선
        curvePath2.addCurve(to: f , controlPoint1: e , controlPoint2: g)
        curvePath2.lineWidth = 2
        curvePath2.stroke()
        
        // 이미지 컨텍스트로부터 UIImage를 만든다
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // 이미지 처리 종료
        UIGraphicsEndImageContext()
        return image!
    }
    
    // 곡선 패스를 만드는 함수
    func makeLinePath(_ startPoint:CGPoint, _ endPoint:CGPoint) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: startPoint)  // 시작점
        path.addLine(to: endPoint) // 종료점
        return path
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 도형 이미지를 만든다
        let drawImage = drawLine()
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

