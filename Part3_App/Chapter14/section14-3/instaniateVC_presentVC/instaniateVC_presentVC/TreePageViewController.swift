//
//  TreePageViewController.swift
//  instaniateVC_presentVC
//
//  Created by yoshiyuki oshige on 2016/09/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class TreePageViewController: UIViewController {

    @IBAction func backToHome(_ sender: Any) {
        // 현재 씬을 닫고 원래 씬으로 되돌아간다
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
