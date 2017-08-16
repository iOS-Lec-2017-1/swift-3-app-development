//
//  ViewController.swift
//  let_var_focus2
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hello()
        world()
    }
    
    func hello() {
        let lang = "Swift"
        let msg = "헬로" + lang
        print(msg)
    }
    
    func world() {
        let msg = "월드"
        print(msg)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

