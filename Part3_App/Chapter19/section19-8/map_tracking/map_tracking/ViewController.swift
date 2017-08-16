//
//  ViewController.swift
//  map_tracking
//
//  Created by yoshiyuki oshige on 2016/09/28.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    // 지도
    @IBOutlet weak var myMap: MKMapView!
    // 트래킹 버튼
    @IBOutlet weak var trackingButton: UIBarButtonItem!
    
    // 로케이션 매니저를 만든다
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 앱 이용 중 위치 정보 이용 허가를 얻는다
        locationManager.requestWhenInUseAuthorization()
        // 로케이션 매니저의 델리게이트가 된다
        locationManager.delegate = self
        // myMap 델리게이트가 된다
        myMap.delegate = self
        // 스케일을 표시한다
        myMap.showsScale = true
    }
    
    // 트래킹 모드를 바꾼다
    @IBAction func tapTrackingButton(_ sender: UIBarButtonItem) {
        switch myMap.userTrackingMode {
        case .none:
            // none에서 follow로
            myMap.setUserTrackingMode(.follow, animated: true)
            // 트래킹 버튼을 변경한다
            trackingButton.image = UIImage(named: "trackingFollow")
        case .follow:
            // follow에서 followWithHeading로
            myMap.setUserTrackingMode(.followWithHeading, animated: true)
            // 트래킹 버튼을 변경한다
            trackingButton.image = UIImage(named: "trackingHeading")
        case .followWithHeading:
            // followWithHeading에서 none으로
            myMap.setUserTrackingMode(.none, animated: true)
            // 트래킹 버튼을 변경한다
            trackingButton.image = UIImage(named: "trackingNone")
        }
    }
    
    // 트래킹이 자동 해제되었다
    func mapView(_ mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool) {
        // 트래킹 버튼을 변경한다
        trackingButton.image = UIImage(named: "trackingNone")
    }
    
    
    // 위치 정보 이용 허가 스테이터스가 바뀌었다
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways, .authorizedWhenInUse :
            // 로케이션 갱신을 시작한다
            locationManager.startUpdatingLocation()
            // 트래킹 버튼을 유효로 한다
            trackingButton.isEnabled = true
        default:
            // 로케이션 갱신을 중지한다
            locationManager.stopUpdatingLocation()
            // 트래킹 모드를 none으로 한다
            myMap.setUserTrackingMode(.none, animated: true)
            // 트래킹 버튼을 변경한다
            trackingButton.image = UIImage(named: "trackingNone")
            // 트래킹 버튼을 무효로 한다
            trackingButton.isEnabled = false
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
