//
//  ViewController.swift
//  fileManager_fileExists
//
//  Created by yoshiyuki oshige on 2016/09/15.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 텍스트 뷰를 Outlet 접속한다
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    
    // 텍스트 파일의 패스
    let thePath = NSHomeDirectory()+"/Documents/myTextfile.txt"
    
    // 파일로 저장
   
    @IBAction func saveToFile(_ sender: Any) {
        // 키보드를 내린다
        view.endEditing(true)
        // 저장할 텍스트 데이터
        let textData = textView1.text
        // 텍스트 데이터 저장을 시도한다
        do {
            try textData?.write(toFile: thePath, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("저장에 실패 \n \(error)")
        }
    }
    
    // 파일로부터 읽어 들인다
   
    @IBAction func readFromFile(_ sender: Any) {
        // 파일 매니저를 만든다
        let fileManager = FileManager.default
        // 특정 파일이 없으면 중단한다
        guard (fileManager.fileExists(atPath: thePath) == true) else {
            return
        }
        // 텍스트 데이터 읽어 들이기를 시도한다
        do {
            let textData = try String(contentsOfFile: thePath, encoding: String.Encoding.utf8)
            // 읽어 들이기를 성공하면 표시한다
            textView2.text = textData
        } catch let error as NSError {
            textView2.text = "읽어 들이기 실패 \n \(error)"
        }
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

