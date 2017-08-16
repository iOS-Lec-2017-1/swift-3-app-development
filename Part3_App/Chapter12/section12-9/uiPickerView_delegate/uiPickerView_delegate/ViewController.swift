//
//  ViewController.swift
//  uiPickerView_delegate
//
//  Created by yoshiyuki oshige on 2016/09/02.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

// UIPickerView의 델리게이트 프로토콜과 데이터 소스 선언을 추가한다
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // 피커 뷰 프로퍼티 선언
    @IBOutlet weak var myPickerView: UIPickerView!
    // 컴포넌트에 표시하는 항목명
    let compos = [["월","화","수","목","금"],["새벽","오전","오후","야간"]]
    
    // 피커 뷰의 컴포넌트 개수를 반환한다
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return compos.count
    }
    
    // 각 컴포넌트 줄수를 반환한다
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let compo = compos[component]
        return compo.count
    }
    
    // 각 컴포넌트 가로 폭을 반환한다
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if component == 0 {
            // 월~금
            return 50
        } else {
            // 시간대
            return 100
        }
    }
    
    // 지정 컴포넌트, 줄 항목명을 반환한다
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 지정 컴포넌트에서 지정행의 항목명을 꺼낸다
        let item = compos[component][row]
        return item
    }
    
    // 드럼식 회전해 항목이 선택되었다
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 선택된 항목
        let item = compos[component][row]
        print("\(item)가 선택되었다")
        
        // 현재 선택되어 있는 행 번호
        let row1 = pickerView.selectedRow(inComponent: 0)
        let row2 = pickerView.selectedRow(inComponent: 1)
        print("현재 선택되어 있는 행 번호 \(row1, row2)")
        
        // 현재 선택되어 있는 항목명
        let item1 = self.pickerView(pickerView, titleForRow: row1, forComponent: 0)
        let item2 = self.pickerView(pickerView, titleForRow: row2, forComponent: 1)
        print("현재 선택되어 있는 항목명 \(item1!, item2!)")
        print("-------------")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // myPickerView 델리게이트가 된다
        myPickerView.delegate = self
        // myPickerView 데이터소스가 된다
        myPickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
