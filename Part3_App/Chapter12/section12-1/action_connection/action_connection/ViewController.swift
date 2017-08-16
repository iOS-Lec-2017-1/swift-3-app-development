//
//  ViewController.swift
//  action_connection
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016년 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 라벨을 가리키는 프로퍼티
    @IBOutlet weak var myLabel: UILabel!
    
    // hello 버튼을 탭하면 실행되는 메서드
    @IBAction func hello(_ sender: Any) {
        myLabel.text = "안녕하세요"
    }
    
    // thank you 버튼을 탭하면 실행되는 메서드
    @IBAction func thankYou(_ sender: Any) {
        myLabel.text = "고맙습니다"
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

