//
//  ViewController.swift
//  tuple_label
//
//  Created by 유세라 on 2017. 1. 19..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let amount = (price:1000, tax:80)
        let charge = amount.price + amount.tax
        print(charge)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

