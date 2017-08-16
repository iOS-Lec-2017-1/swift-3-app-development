//
//  DetailViewController.swift
//  supportedOriantation
//
//  Created by yoshiyuki oshige on 2016/09/20.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override var shouldAutorotate : Bool {
        // 오토로테이션을 허가한다
        return true
    }
    
    // 회전을 허가하는 회전 방향을 반환한다
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        // 포트레이트 방향만을 허가한다
        return UIInterfaceOrientationMask.portrait
    }
    
    // 씬을 닫는다
    @IBAction func goBack(_ sender: Any) {
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
