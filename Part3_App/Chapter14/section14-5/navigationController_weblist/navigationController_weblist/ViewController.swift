//
//  ViewController.swift
//  navigationController_weblist
//
//  Created by yoshiyuki oshige on 2016/09/07.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Web 뷰와 Outlet 접속한다
    @IBOutlet weak var webView: UIWebView!
    
    
    // 씬 이동할 때 설정되는 Web 데이터
    var data:(name:String, url:String)?
    
    // Web 페이지를 연다
    func openWeb() {
        // data가 설정되어 있다면 webData에 넣는다
        if let webData = data {
            // 접근할 URL을 만든다
            if let url = URL(string:webData.url) {
                let urlReq = URLRequest(url: url)
                // Web 페이지를 연다
                webView.loadRequest(urlReq)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Web 페이지를 연다
        openWeb()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

