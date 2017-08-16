//
//  ViewController.swift
//  view_convertPoint
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var sky: UIView!
    @IBOutlet weak var dragonfly: UIImageView!
    
    @IBAction func catchDragonfly(_ sender: Any) {
        // sky 뷰의 좌표 dargonfly.center를 view 뷰 좌표계로 변환한다
        var point = view.convert(dragonfly.center, from: sky)
        
        // 화살표 끝이 point를 가리키게 조정한다
        point.x += arrow.bounds.width/2
        point.y -= arrow.bounds.height/2
        // 화살표를 이동시킨다
        arrow.center = point
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

