//
//  ViewController.swift
//  dictionary_remove
//
//  Created by yoshiyuki oshige on 2016/08/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var theRace = ["short":20, "half":40, "full":85]
        let theKey = "short"
        if let result = theRace.removeValue(forKey: theKey) {
            print("\(theKey)는 삭제했습니다. 값은 \(result)이었습니다.")
        } else {
            print("\(theKey)는 없었습니다.")
        }
        print(theRace)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

