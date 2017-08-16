//
//  ViewController.swift
//  uiScrollView_keyboard1
//
//  Created by 유세라 on 2017. 1. 27..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var contentView: UIView!
    
    
    @IBOutlet var myTextFields: [UITextField]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        // 스크롤 뷰 영역을 지정한다
        let scrollFrame = CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height-20)
        myScrollView.frame = scrollFrame
        // 컨텐츠 사이즈를 지정한다
        let contentRect  = contentView.bounds
        myScrollView.contentSize = CGSize(width:contentRect.width, height:contentRect.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

