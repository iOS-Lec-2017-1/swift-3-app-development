//
//  ViewController.swift
//  uiLabel_lineBreakMode
//
//  Created by yoshiyuki oshige on 2016/08/29.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textData = "독도는 우리땅 경상북도 울릉군"
        myLabel.lineBreakMode = .byTruncatingMiddle
        myLabel.text = textData
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

