//
//  ViewController.swift
//  uiImageView_animation_running
//
//  Created by yoshiyuki oshige on 2015/09/12.
//  Copyright © 2015年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 애니메이션 이미지 뷰를 Outlet 접속한다
    @IBOutlet weak var boyView: UIImageView!

    // 슬라이더와 Actions 접속한다
    @IBAction func runSpeed(_ sender: UISlider) {
        // 재생 초수를 슬라이더로 정한다
        let sec = (1 - sender.value) * 3
        // 재생에 걸리는 초수를 설정한다
        boyView.animationDuration = TimeInterval(sec)

        // 슬라이더 값이 0일 때 멈춘다
        if sender.value == 0 {
            // 애니메이션을 스톱한다
            boyView.stopAnimating()
            // 서서 멈춰 있는 이미지로 바꾼다
            boyView.image = UIImage(named: "jogboy_0")
        } else {
            // 애니메이션이 멈춰있으면 재생한다
            if !boyView.isAnimating {
                // 재생하는 이미지 배열을 설정한다
                boyView.animationImages = jogboyImages()
                // 무한 루프 재생한다
                boyView.animationRepeatCount = 0
                // 애니메이션을 시작한다
                boyView.startAnimating()
            }
        }
        
    }
    
    // 프레임 이미지 배열을 만든다
    func jogboyImages () -> Array<UIImage> {
        var theArray = Array<UIImage>()
        for num in 1...10 {
            // jogboy_1〜jogboy_10 이미지를 만든다
            let imageName = "jogboy_" + String(num)
            let image = UIImage(named: imageName)
            // 배열에 추가한다
            theArray.append(image!)
        }
        return theArray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

