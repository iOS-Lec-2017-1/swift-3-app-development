//
//  ViewController.swift
//  insects_tableView
//
//  Created by yoshiyuki oshige on 2016/09/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

// 테이블 뷰에 표시하는 데이터
let sectionTitle = ["나비목", "메뚜기목", "갑충목"]
let section0 = [("네발나비","네발나비과"),("남방제비나비","호랑나비과")]
let section1 = [("여치","여치과"),("변색애기메뚜기","메뚜기과"),("귀뚜라미","귀뚜라미과")]
let section2 = [("길앞잡이","길앞잡이과"),("딱정벌레","딱정벌레과"),("꼬마사슴벌레","사슴벌레과")]
let tableData = [section0, section1, section2]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테이블 뷰를 만든다
        let myTableView:UITableView!
        myTableView = UITableView(frame: view.frame, style: .grouped)
        // 테이블 뷰의 델리게이트를 설정한다
        myTableView.delegate = self
        // 테이블 뷰의 데이터 소스를 설정한다
        myTableView.dataSource = self
        // 테이블 뷰를 표시한다
        view.addSubview(myTableView)
    }
    
    /*　UITableViewDataSource 프로토콜 */
    // 섹션 개수를 정한다
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    // 섹션마다 행수를 정한다
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = tableData[section]
        return sectionData.count
    }
    
    // 섹션 타이틀을 정한다
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
    // 셀을 만든다
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let sectionData = tableData[(indexPath as NSIndexPath).section]
        let cellData = sectionData[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = cellData.0
        cell.detailTextLabel?.text = cellData.1
        return cell
    }
    
    /* UITableViewDelegate 델리게이트 메서드*/
    // 행이 탭되면 실행된다
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = sectionTitle[indexPath.section]
        let sectionData = tableData[indexPath.section]
        let cellData = sectionData[indexPath.row]
        print("\(title)\(cellData.1)")
        print("\(cellData.0)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

