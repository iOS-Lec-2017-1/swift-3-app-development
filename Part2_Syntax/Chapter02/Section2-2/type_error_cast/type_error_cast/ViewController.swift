//
//  ViewController.swift
//  type_error_cast
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let quantity = 5
        let unitPrice = 2300
        let tax = 1.08
        let price = Double(unitPrice * quantity) * (1 + tax) // 캐스트해서 형을 합합니다
        // 값 출력
        print(price)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

