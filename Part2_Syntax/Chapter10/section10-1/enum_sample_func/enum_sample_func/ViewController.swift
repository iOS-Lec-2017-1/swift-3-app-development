//
//  ViewController.swift
//  enum_sample_func
//


import UIKit

enum WomensSize {
    case XS, S, M, L
}

class ViewController: UIViewController {
    
    func packing(size:WomensSize) -> String{
        var stuff:String
        
        switch size {
        case .XS, .S :
            stuff = " 여성용 XS,S 사이즈 비품"
        case .M:
            stuff = " 여성용 M 사이즈 비품"
        case .L:
            stuff = " 여성용 L 사이즈 비품"
        }
        return stuff
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let theStuff = packing(size: .M)
        print(theStuff)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

