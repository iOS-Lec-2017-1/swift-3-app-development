//
//  MyTabBarController.swift
//  tabbedApp
//
//  Created by yoshiyuki oshige on 2016/09/08.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        // Third 탭이었을 때 배지를 지운다
        if item.title == "Third" {
            item.badgeValue = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3번째 탭에 배지 "New"를 붙인다
        let tabBartItem = tabBar.items?[2]
        tabBartItem?.badgeValue = "New"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
