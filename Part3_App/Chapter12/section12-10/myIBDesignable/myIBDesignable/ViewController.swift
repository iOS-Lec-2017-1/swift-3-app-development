//
//  ViewController.swift
//  myIBDesignable
//
//  Created by yoshiyuki oshige on 2016/09/02.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

// 버튼에 테투리 선을 설정하는 커스텀 Attributes 패널
@IBDesignable class BorderedButton: UIButton {
    
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: self.layer.borderColor!) }
        set { self.layer.borderColor = newValue?.cgColor ?? nil }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0.0
        }
    }
}


// 라벨에 테투리 선을 설정하는 커스텀 Attributes 패널
@IBDesignable class BorderedLabel: UILabel {
    
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: self.layer.borderColor!) }
        set { self.layer.borderColor = newValue?.cgColor ?? nil }
    }
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0.0
        }
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

