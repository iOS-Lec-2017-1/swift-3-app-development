//
//  ViewController.swift
//  for-in_dictionary
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 사전인 경우 값 꺼내기
        let tokyometro = ["G":"구로역", "M":"명학역", "H":"회기역",
                          "T":"태평역", "C":"천안역","Z":"지축역",
                          "N":"남역역", "F":"파주역"]
        for (rosenKigou,rosenName) in tokyometro {
            print("\(rosenKigou) は\(rosenName)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

