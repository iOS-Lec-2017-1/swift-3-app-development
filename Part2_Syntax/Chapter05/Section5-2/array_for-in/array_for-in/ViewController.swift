//
//  ViewController.swift
//  array_for-in
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numArray = [53, 45, 67, 81, 77]
        var sum = 0
        var min = Int.max // Int 최대값
        var max = Int.min // Int 최소값
        //numArray에서 모든 값을 1개씩 꺼낸다
        for item in numArray {
            sum += item // 합한다
            if item < min {
                min = item // 작은 쪽으로 바꾼다
            }
            if item > max {
                max = item // 큰 쪽으로 바꾼다
            }
        }
        // 평균을 구한다
        let ave = Double(sum)/Double(numArray.count)
        print(" 합계 \(sum), 평균 \(ave), 최소 \(min), 최대 \(max)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

