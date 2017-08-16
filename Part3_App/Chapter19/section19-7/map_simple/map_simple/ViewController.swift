//
//  ViewController.swift
//  map_simple
//
//  Created by yoshiyuki oshige on 2016/09/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
    // 맵 뷰
    @IBOutlet weak var myMap: MKMapView!
    // 툴 바
    @IBOutlet weak var toolBar: UIToolbar!
    // 툴 바의 TintColor 초깃값
    var defaultColor:UIColor!
    
    // 프랑스 파리의 에펠탑 영역을 표시한다
    @IBAction func gotoSpot(_ sender: AnyObject) {
        // 위도와 경도
        let ido = 35.454954
        let keido = 139.6313859
        // 중앙에 표시하는 좌표
        let center = CLLocationCoordinate2D(latitude: ido, longitude: keido)
        // 스팬
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        // 표시하는 영역
        let theRegion = MKCoordinateRegion(center: center, span: span)
        // 영역의 지도를 표시한다
        myMap.setRegion(theRegion, animated: true)
    }
    
    // 지도 타입을 바꾼다
    @IBAction func changedMapType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 :
            // 지도
            myMap.mapType = .standard
            // 부각(내려다보는 각도)
            myMap.camera.pitch = 0.0
            // 툴 바를 표준으로 되돌린다
            toolBar.tintColor = defaultColor
            toolBar.alpha = 1.0
        case 1 :
            // 위성 사진
            myMap.mapType = .satellite
            // 툴 바를 반투명한 흰색으로 설정한다
            toolBar.tintColor = UIColor.white
            toolBar.alpha = 0.8
        case 2 :
            // 사진+지도(하이브리드)
            myMap.mapType = .hybrid
            // 툴 바를 반투명한 흰색으로 설정 한다
            toolBar.tintColor = UIColor.white
            toolBar.alpha = 0.8
        case 3:
            // 지도
            myMap.mapType = .standard
            // 툴 바를 표준으로 되돌린다
            toolBar.tintColor = defaultColor
            toolBar.alpha = 1.0
            // 3D 뷰
            myMap.camera.pitch = 70 // 부각(내려다보는 각도)
            myMap.camera.altitude = 700 // 고도
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 툴 바의 초기 컬러
        defaultColor = toolBar.tintColor
        // 스케일을 표시한다
        myMap.showsScale = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

