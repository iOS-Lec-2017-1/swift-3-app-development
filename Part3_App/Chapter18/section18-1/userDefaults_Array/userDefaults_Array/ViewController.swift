//
//  ViewController.swift
//  userDefaults_Array
//
//  Created by yoshiyuki oshige on 2016/09/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func getList(_ sender: Any) {
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        // 키 "myList"값을 배열로써 읽어 들인다
        if let theList = defaults.array(forKey: "myList"){
            print(theList)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배열을 만든다
        let list = [1,2,3]
        // 유저 디폴트를 참조한다
        let defaults = UserDefaults.standard
        // 배열 list를 키ー"myList"에 저장한다
        defaults.set(list, forKey: "myList")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


