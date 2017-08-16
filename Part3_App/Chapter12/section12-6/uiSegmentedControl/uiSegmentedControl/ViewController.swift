//
//  ViewController.swift
//  uiSegmentedControl
//
//  Created by yoshiyuki oshige on 2016/08/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 뷰 프로퍼티 선언
    @IBOutlet weak var colorChip: UIView!
    
    // 세그먼티드 컨트롤러에서 색을 고르면 호출된다
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        // 선택된 인덱스 번호로 처리를 분기한다
        switch sender.selectedSegmentIndex {
        case 0:
            colorChip.backgroundColor = UIColor.blue
        case 1:
            colorChip.backgroundColor = UIColor.yellow
        case 2:
            colorChip.backgroundColor = UIColor.green
        default :
            colorChip.backgroundColor = UIColor.blue
        }
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

