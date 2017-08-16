//
//  ViewController.swift
//  enum_forcus
//


import UIKit

// 글로벌 열거형 Season
enum Season {
    case Spring, Summer, Autumn, Winter
}

class MyClass {
    // 열거형 Season을 사용한다
    let fourSeason = Season.Autumn
    func likeSeason() -> Season {
        return fourSeason
    }
}

class ViewController: UIViewController {
    
    // 클래스 내에서만 유효한 열거형 Grade
    enum Grade {
        case FiveStars, FourStars, ThreeStars
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Season과 Grade를 사용한다
        let FourSeason = Season.Winter
        let gradeType = Grade.FiveStars
        print(FourSeason)
        print(gradeType)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

