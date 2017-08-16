//
//  ViewController.swift
//  string_hasPrefix_hasSuffix
//
//  Created by yoshiyuki oshige on 2016/08/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemList = ["김치찌개", "김치볶음밥", "된장찌개", "두부찌개"]
    
        // String 형의 빈 배열을 만든다
        var menu1 = [String]()
        var menu2 = [String]()
        for item in itemList {
            // "김치"로 시작하는 아이템
            if item.hasPrefix("김치") {
                menu1.append(item)
            }
            // "찌개"로 끝나는 아이템
            if item.hasSuffix("찌개") {
                menu2.append(item)
            }
        }
        print(menu1)
        print(menu2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

