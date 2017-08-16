//
//  ViewController.swift
//  dictionary_for-in_tuple
//
//  Created by yoshiyuki oshige on 2016/08/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subwayline2 = ["H1":"합정역", "S1":"사당", "S2":"신도림", "G":"강남", "J":"종합운동장",
                           "D":"동대문역사문화공원", "S3":"시청", "H2":"홍대입구"]
        
        for (rosenSign, rosenName) in subwayline2 {
            print("\(rosenSign)는 \(rosenName)입니다.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

