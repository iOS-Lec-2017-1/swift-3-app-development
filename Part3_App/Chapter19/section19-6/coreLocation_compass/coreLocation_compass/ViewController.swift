//
//  ViewController.swift
//  coreLocation_compass
//
//  Created by yoshiyuki oshige on 2016/09/27.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    // 로케이션 매니저를 만든다
    var locationManager = CLLocationManager()
    // 라벨
    @IBOutlet weak var latitudeLabel: UILabel!     // 위도 latitude
    @IBOutlet weak var longitudeLabel: UILabel!    // 경도 longitude
    @IBOutlet weak var altitudeLabel: UILabel!     // 고도 altitude
    @IBOutlet weak var declinationLabel: UILabel!  // 편각 declination
    @IBOutlet weak var bearingLabel: UILabel!      // 방위 bearing
    // 자북｜진북을 선택하는 세그먼티트 컨트롤
    @IBOutlet weak var notrhSeg: UISegmentedControl!
    // 자침
    @IBOutlet weak var compass: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 라벨 초기화
        disabledLocationLabel()
        // 앱 이용 중 위치 정보 이용 허가를 얻는다
        locationManager.requestWhenInUseAuthorization()
        // 로케이션 매니져 delegete가 된다
        locationManager.delegate = self
        // 로케이션 기능 설정
        setupLocationService()
        // 컴퍼스 기능을 시작한다
        startHeadingService()
    }
    
    // 로케이션 기능 설정
    func setupLocationService() {
        // 로케이션 정밀도를 설정한다（베스트）
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        // 갱신 거리（미터）
        locationManager.distanceFilter = 1
    }
    
    //　로케이션 서비스 이용 불가 메세지
    func disabledLocationLabel() {
        let msg = "위치 정보 이용을 허가하지 않습니다."
        latitudeLabel.text = msg
        longitudeLabel.text = msg
        altitudeLabel.text = msg
    }
    
    // 컴퍼스 기능
    func startHeadingService() {
        // 세그먼티드 컨트롤러로 자북을 선택한다
        notrhSeg.selectedSegmentIndex = 0
        // 자신이 가리키고 있는 방향을 디바이스의 포트레이트 방향으로 한다
        locationManager.headingOrientation = .portrait
        // 헤딩 갱신 각도（degree）
        locationManager.headingFilter = 1
        // 헤딩 갱신을 시작한다
        locationManager.startUpdatingHeading()
    }
    
    // 위치 정보 이용 허가 스테이터스가 바뀌었다
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways, .authorizedWhenInUse :
            // 로케이션 갱신을 시작한다
            locationManager.startUpdatingLocation()
        case .notDetermined:
            // 로케이션 갱신을 중지한다
            locationManager.stopUpdatingLocation()
            disabledLocationLabel()
        default:
            // 로케이션 갱신을 중지한다
            locationManager.stopUpdatingLocation()
            disabledLocationLabel()
        }
    }
    
    // 위치를 이동했다
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // locations의 마지막 값을 꺼낸다
        let locationData = locations.last
        // 위도
        if var latitude = locationData?.coordinate.latitude {
            latitude = round(latitude*1000000)/1000000
            latitudeLabel.text = String(latitude)
        }
        // 경도
        if var longitude = locationData?.coordinate.longitude {
            longitude = round(longitude*1000000)/1000000
            longitudeLabel.text = String(longitude)
        }
        // 고도
        if var altitude = locationData?.altitude {
            altitude = round(altitude*100)/100
            altitudeLabel.text = String(altitude) + " m"
        }
    }
    
    // 향하고 있는 각도가 바뀌었다
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        // 진북 true north
        let trueNorth = newHeading.trueHeading
        // 자북 magnetic north
        let magneticNorth = newHeading.magneticHeading
        // 편각
        var declination =  magneticNorth - trueNorth
        if declination < 0 {
            declination =  declination + 360
        }
        declination = round(declination*100)/100
        declinationLabel.text = String(declination)
        // 북의 각도 facing north
        var facingNorth:CLLocationDirection!
        if notrhSeg.selectedSegmentIndex == 0 {
            facingNorth = magneticNorth
        } else {
            facingNorth = trueNorth
        }
        // 자침으로 북을 가리킨다
        compass.transform = CGAffineTransform(rotationAngle: CGFloat(-facingNorth * M_PI/180))
        // 디바이스가 향하고 있는 방위각도
        let bearing = round(facingNorth*100)/100
        bearingLabel.text = String(bearing)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

