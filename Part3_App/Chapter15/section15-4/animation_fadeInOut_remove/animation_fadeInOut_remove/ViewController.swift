//
//  ViewController.swift
//  animation_fadeInOut_remove
//
//  Created by yoshiyuki oshige on 2016/09/10.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        // flower를 만든다
        let flower = UIImageView(image: UIImage(named: "flower"))
        // 투명도를 0으로 한다
        flower.alpha = 0
        // 탭된 좌표에 flower를 추가한다
        flower.center = sender.location(in: self.view)
        view.addSubview(flower)
        
        // 페이드인한다
        UIView.animate(
            withDuration: 2.0, // 2.0초 걸려서 표시된다
            delay: 0, // 바로 시작한다
            options: [.curveEaseInOut],
            animations: {
                // 표시한다
                flower.alpha = 1.0
            },
            completion:{(finished:Bool) in
                // 페이드인이 종료하면 실행한다
                self.fadeoutAndRemove(flower)
        })
        
    }
    
    // 페이드 아웃이 종료되면 지운다
    func fadeoutAndRemove(_ view:UIView) {
        // 페이드 아웃한다
        UIView.animate(
            withDuration: 2.0, // 2.0초 간 걸려서 지운다
            delay: 3.0, // 3초 후에 지우기 시작한다
            options: UIViewAnimationOptions(),
            animations: {
                // 지운다
                view.alpha = 0.0
            },
            completion:{(finished:Bool) in
                // 뷰에서 지운다
                view.removeFromSuperview()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

