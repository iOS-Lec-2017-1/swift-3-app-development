//
//  ViewController.swift
//  dictionary_for-in_keys
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
        for rosenSign in subwayline2.keys {
            print("\(rosenSign)", terminator: "、")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

