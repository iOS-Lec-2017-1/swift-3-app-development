//
//  ViewController.swift
//  uiBezierPath_line
//
//  Created by yoshiyuki oshige on 2016/09/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func drawLine() -> UIImage {
        // 꺾은선으로 하는 점의 배열
        var pointList = Array<CGPoint>()
        let pointCount = 20 // 점의 개수
        // x 간격
        let dx = Int(view.frame.width)/pointCount
        // y 간격
        let height = UInt32(view.frame.height)/2
        // 점 배열을 만든다
        for n in 1...pointCount {
            let px = CGFloat(dx * n)
            let py = CGFloat(arc4random_uniform(height) + 50)
            let point = CGPoint(x: px, y: py)
            pointList.append(point)
        }
        
        // 이미지 처리 시작
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        // 패스 초기화
        let drawPath = UIBezierPath()
        // 시작점으로 이동한다
        drawPath.move(to: pointList[0])
        // 배열에서 시작점 값을 없앤다
        pointList.removeFirst()
        // 배열에서 점을 꺼내서 연결해 간다
        for pt in pointList {
            drawPath.addLine(to: pt)
        }
        
        // 선 색
        UIColor.blue.setStroke()
        // 선 폭
        drawPath.lineWidth = 2.0
        // 선의 이음매 형태
        drawPath.lineJoinStyle = .round
        // 점선으로 한다
        drawPath.setLineDash([4.0, 2.0], count: 2, phase: 0.0)
        // 선을 그린다
        drawPath.stroke()
        
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

