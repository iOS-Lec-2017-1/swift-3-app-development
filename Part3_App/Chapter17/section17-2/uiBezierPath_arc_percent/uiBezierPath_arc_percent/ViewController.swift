//
//  ViewController.swift
//  uiBezierPath_arc_percent
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // 퍼센트 원호의 패스를 만든다
    func arcPercent(_ radius:CGFloat, _ percent:Double) -> UIBezierPath {
        let endAngle = 2*M_PI*percent/100 - M_PI_2
        let path = UIBezierPath(
            arcCenter: CGPoint(x: 0, y: 0),
            radius: radius,
            startAngle: CGFloat(-M_PI_2),
            endAngle: CGFloat(endAngle),
            clockwise: percent>0
        )
        return path
    }
    
    func drawLine() -> UIImage {
        // 이미지 처리 시작
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        let percent = 58.2
        // 원호 패스를 만든다
        UIColor.red.setStroke()
        let arcPath = arcPercent(80, percent)
        arcPath.lineWidth = 60
        arcPath.lineCapStyle = .butt
        // 패스를 평행이동한다
        let tf = CGAffineTransform(translationX: view.center.x, y: view.center.y)
        arcPath.apply(tf)
        arcPath.stroke()
        
        // [몇 ％] 숫자를 쓴다
        let font = UIFont.boldSystemFont(ofSize: 28)
        let textFontAttributes = [NSFontAttributeName: font,
                                  NSForegroundColorAttributeName: UIColor.gray]
        let drawString = String(percent) + "%"
        let posX = view.center.x - 45
        let posY = view.center.y - 15
        let rect = CGRect(x: posX, y: posY, width: 90, height: 30)
        drawString.draw(in: rect, withAttributes: textFontAttributes)
        
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

