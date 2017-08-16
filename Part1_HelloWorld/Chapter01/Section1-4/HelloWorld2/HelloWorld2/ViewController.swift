//
//  ViewController.swift
//  HelloWorld2
//
//  Created by yoshiyuki oshige on 2016/07/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapGreen(_ sender: AnyObject) {
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func tapWhite(_ sender: AnyObject) {
        view.backgroundColor = UIColor.white
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

