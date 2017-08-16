//
//  ViewController.swift
//  uiBezierPath_closePath
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func drawLine() -> UIImage {
        // 이미지 처리 시작
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        // 원호 패스를 만든다
        let center = CGPoint(x: view.center.x, y: 200)
        let arcPath = UIBezierPath(
            arcCenter: center,
            radius: 80.0,
            startAngle: CGFloat(-M_PI_2),
            endAngle: CGFloat(M_PI_4*3),
            clockwise: true // 시계 방향
        )
        // 중심까지 직선 패스를 추가한다
        arcPath.addLine(to: center)
        // 패스를 닫는다
        arcPath.close()
        
        // 패스를 칠한다
        UIColor.cyan.setFill()
        arcPath.fill()
        // 패스를 그린다
        arcPath.lineWidth = 5
        arcPath.lineCapStyle = .butt
        arcPath.stroke()
        
        // 이미지 컨텍스트로부터 UIImage를 만든다
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // 이미지 처리 종료
        UIGraphicsEndImageContext()
        return image!
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

