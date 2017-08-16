//
//  ViewController.swift
//  dictionary_removeAll
//
//  Created by yoshiyuki oshige on 2016/08/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var theRace = ["short":20, "half":40, "full":85]
        theRace.removeAll()
        print(theRace)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

