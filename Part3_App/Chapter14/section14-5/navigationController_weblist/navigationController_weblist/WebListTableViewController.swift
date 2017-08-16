//
//  WebListTableViewController.swift
//  navigationController_weblist
//
//  Created by yoshiyuki oshige on 2016/09/07.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class WebListTableViewController: UITableViewController {
    
    // 셀에 표시하는 데이터
    let webList = [
        (name:"애플", url:"http://www.apple.com/kr/"),
        (name:"구글", url:"http://www.google.com"),
        (name:"네이버", url:"http://www.naver.com"),
        (name:"위키북스", url:"http://wikibook.co.kr/")
    ]
    
    // 섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 섹션 내의 행수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 배열 webList 값의 개수
        return webList.count
    }
    
    // 셀을 만든다
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 테이블 셀을 참조한다
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // 테이블에 WebList 데이터를 표시한다
        let webData = webList[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = webData.name
        cell.detailTextLabel?.text = webData.url
        
        return cell
    }
    
    // MARK: - Navigation
    
    // 세그웨이로 이동하기 전에 데이터를 주고 받는다
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 세그웨이가 showWebPage일 때의 처리
        if segue.identifier == "showWebPage" {
            // 세그웨이 showWebPage일 떄 실행한다
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // 행 데이터를 꺼낸다
                let webData = webList[(indexPath as NSIndexPath).row]
                // 이동할 곳의 뷰 컨트롤러 data 프로퍼티에 값을 설정한다
                (segue.destination as! ViewController).data = webData
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
