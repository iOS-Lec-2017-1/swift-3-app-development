//
//  TreePageViewController.swift
//  instaniateVC_presentVC1
//
//  Created by 유세라 on 2017. 1. 27..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class TreePageViewController: UIViewController {

    
    @IBAction func backToHome(_ sender: Any) {
        // 현재 씬을 닫고 원래의 씬으로 되돌아간다
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
