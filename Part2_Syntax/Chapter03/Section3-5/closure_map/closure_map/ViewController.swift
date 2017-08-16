//
//  ViewController.swift
//  closure_map
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numbers = [4,7,2,9]
        // 배열의 모든 값을 2배로 한다
        let array1 = numbers.map({(v:Int) -> Int in
            return v*2
        })
        print(array1)
        
        // 인수 클로져를 밖으로 뺀 서식
        let array2 = numbers.map{(v:Int) -> Int in
            return v*2
        }
        print(array2)
        
        // 형추론을 이용해 return을 생략한 서식
        let array3 = numbers.map{v in v*2}
        print(array3)
        
        // 인수를 생략한 서식
        let array4 = numbers.map{$0*2}
        print(array4)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

