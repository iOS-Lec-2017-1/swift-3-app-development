//
//  ViewController.swift
//  uiResponder_touches
//
//  Created by yoshiyuki oshige on 2016/09/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 터치 시작
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#function)
        // 터치된 뷰
        let target = touches.first?.view
        print(target!.frame)
    }
    
    // 터치 중
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#function)
        // 터치되고 있는 좌표
        let loc = touches.first?.location(in: view)
        print(loc!)
    }
    
    // 터치 종료
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#function)
    }
    
    // 취소
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#function)
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
