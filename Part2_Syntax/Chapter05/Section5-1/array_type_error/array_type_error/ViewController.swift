//
//  ViewController.swift
//  array_type_error
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // idList는 형 추론으로 [String]으로 설정된다
        
        
        var idList = ["a1", "a2", "a3"]
        idList = [1, 2, 3] // 오류가 난다
        
        
        print(idList)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

