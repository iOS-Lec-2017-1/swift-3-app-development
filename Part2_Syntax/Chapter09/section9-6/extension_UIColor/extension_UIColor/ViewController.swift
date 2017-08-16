//
//  ViewController.swift
//  extension_UIColor
//


import UIKit

// UIColor 클래스를 확장해 클래스 프로퍼티를 추가한다
extension UIColor {
    // 연두색
    class var grassgreen:UIColor {
        // #ABC900
        return UIColor(red: 0.6706, green: 0.7882, blue: 0.0, alpha: 1)
    }
    // 노란 빛이 들어간 빨간색
    class var vividrasberry:UIColor {
        // #E5004F
        return UIColor(red: 0.898, green: 0.0, blue: 0.3098, alpha: 1)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 표준 색
        let color1 = UIColor.red
        // 확장한 색
        let color2 = UIColor.grassgreen
        let color3 = UIColor.vividrasberry
        
        // 화면의 배경색을 color3（노란 빛이 들어간 빨간색）로 설정한다
        view.backgroundColor = color3
        
        print(color1)
        print(color2)
        print(color3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

