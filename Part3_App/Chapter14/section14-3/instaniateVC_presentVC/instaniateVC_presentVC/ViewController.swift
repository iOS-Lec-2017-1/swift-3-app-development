//
//  ViewController.swift
//  instaniateVC_presentVC
//
//  Created by yoshiyuki oshige on 2016/09/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func gotoTreePage(_ sender: Any) {
        // 이동할 곳의 뷰 컨트롤러를 참조한다
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "treePage")
        // 트랜잭션 영상효과를 지정한다
        nextVC?.modalTransitionStyle = .flipHorizontal
        // 씬을 이동한다
        present(nextVC!, animated: true, completion: nil)
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

