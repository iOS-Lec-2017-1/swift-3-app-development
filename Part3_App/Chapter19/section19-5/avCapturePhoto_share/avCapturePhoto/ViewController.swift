//
//  ViewController.swift
//  avCapturePhoto
//
//  Created by yoshiyuki oshige on 2016/09/27.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController{
    // 프리뷰 용의 뷰와 공유 버튼을 Outlet 접속해둔다
    @IBOutlet weak var previewView: UIView!
    @IBOutlet weak var shutterButton: UIButton!
    // 인스턴스 작성
    var session = AVCaptureSession()
    var photoOutput = AVCapturePhotoOutput()
    // 통지 센터를 만든다
    let notification = NotificationCenter.default
    // 프라이버시와 입출력 스테이터스
    var authStatus:AuthorizedStatus = .authorized
    var inOutStatus:InputOutputStatus = .ready
    // 인증 스테이터스
    enum AuthorizedStatus {
        case authorized
        case notAuthorized
        case failed
    }
    // 입출력 스테이터스
    enum InputOutputStatus {
        case ready
        case notReady
        case failed
    }
    
    // 공유할 이미지
    var shareImage:UIImage?
    
    // 뷰가 표시된 직후에 실행
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 세션 실행 중이라면 중단한다
        if session.isRunning {
            return
        }
        // 카메라 프라이버시 인증 확인
        cameraAuth()
        // 입출력 설정
        setupInputOutput()
        // 카메라 준비가 되어있는지 여부
        if (authStatus == .authorized)&&(inOutStatus == .ready){
            // 프리뷰 레이어 설정
            setPreviewLayer()
            // 세션 시작
            session.startRunning()
            shutterButton.isEnabled = true
        } else {
            // 카메라 이용이 허가되지 않을 때（처음 실행 시는 무효）
            shutterButton.isEnabled = false
            // 알람을 표시한다
            showAlert(appName: "카메라")
        }
        // 디바이스가 회전했을 때에 통지하는 이벤트 핸들러를 설정한다
        notification.addObserver(self,
                                 selector: #selector(self.changedDeviceOrientation(_:)),
                                 name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    // 셔트 버튼으로 실행한다
    @IBAction func takePhoto(_ sender: Any) {
        if (authStatus == .authorized)&&(inOutStatus == .ready){
            let captureSetting = AVCapturePhotoSettings()
            captureSetting.flashMode = .auto
            captureSetting.isAutoStillImageStabilizationEnabled = true
            captureSetting.isHighResolutionPhotoEnabled = false
            // 캡쳐 이미지 처리는 델리게이트에 맡긴다
            photoOutput.capturePhoto(with: captureSetting, delegate: self)
        } else {
            // 카메라 이용을 허가하지 않았어도 변함없이 버튼을 탭했다（처음 실행 시만）
            showAlert(appName: "카메라")
        }
    }
    
    // 쉐어 버튼으로 실행한다
    @IBAction func shareAction(_ sender: Any) {
        guard let shareImage = shareImage else {
            return
        }
        // 공유할 내용을 만든다
        let sharedText = "공유합니다."
        let activities = [sharedText as Any, shareImage]
        let appActivities = [UIActivity()]
        // 액티비티 컨트롤러를 표시한다
        let activityVC = UIActivityViewController(activityItems: activities, applicationActivities: appActivities)
        self.present(activityVC, animated: true, completion: nil)
    }
    
    
    // 카메라 프라이버시 인증 확인
    func cameraAuth(){
        let status = AVCaptureDevice.authorizationStatus(forMediaType: AVMediaTypeVideo)
        switch status {
        case .notDetermined:
            // 처음 실행 시
            AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeVideo,
                                          completionHandler: { [unowned self] authorized in
                                            print("첫 회", authorized.description)
                                            if authorized {
                                                self.authStatus = .authorized
                                            } else {
                                                self.authStatus = .notAuthorized
                                            }})
        case .restricted, .denied:
            authStatus = .notAuthorized
        case .authorized:
            authStatus = .authorized
        }
    }
    
    // 입출력 설정
    func setupInputOutput(){
        // 해상도 지정
        session.sessionPreset = AVCaptureSessionPresetPhoto
        // 입출력
        do {
            // 디바이스 구하기
            let device = AVCaptureDevice.defaultDevice(
                withDeviceType: AVCaptureDeviceType.builtInWideAngleCamera,
                mediaType: AVMediaTypeVideo,
                position: .back)
            
            // 입력 장소
            let input = try AVCaptureDeviceInput(device: device)
            if session.canAddInput(input){
                session.addInput(input)
            } else {
                inOutStatus = .notReady
                print("세션에 입력을 추가할 수 없었다")
                return
            }
        } catch  let error as NSError {
            inOutStatus = .notReady
            print("카메라가 없다 \(error)")
            return
        }
        
        // 출력 장소
        if session.canAddOutput(photoOutput) {
            session.addOutput(photoOutput)
        } else {
            inOutStatus = .notReady
            print("세션에 출력을 추가할 수 없었다")
            return
        }
    }
    
    // 프리뷰 레이어 설정
    func setPreviewLayer(){
        // 프리뷰 레이어를 만든다
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        guard let videoLayer = previewLayer else {
            print("프리뷰 레이어를 만들 수 없었다")
            shutterButton.isEnabled = false
            return
        }
        videoLayer.frame = view.bounds
        videoLayer.masksToBounds = true
        videoLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        // previewView에 추가한다
        previewView.layer.addSublayer(videoLayer)
    }
    
    // 디바이스 방향이 바뀌었을 때 호출되는 메서드
    func changedDeviceOrientation(_ notification :Notification) {
        // photoOutput.connection 회전 방향을 디바이스에 맞춘다
        if let photoOutputConnection = self.photoOutput.connection(withMediaType: AVMediaTypeVideo) {
            switch UIDevice.current.orientation {
            case .portrait:
                photoOutputConnection.videoOrientation = .portrait
            case .portraitUpsideDown:
                photoOutputConnection.videoOrientation = .portraitUpsideDown
            case .landscapeLeft:
                photoOutputConnection.videoOrientation = .landscapeRight
            case .landscapeRight:
                photoOutputConnection.videoOrientation = .landscapeLeft
            default:
                break
            }
        }
    }
    
    // 프라이버시 인증 알람을 표시한다
    func showAlert(appName:String){
        let aTitle = appName + " 프라이버시 인증"
        let aMessage = "설정＞" + appName + "에 이용을 허가해주세요."
        let alert = UIAlertController(title: aTitle, message: aMessage, preferredStyle: .alert)
        // OK 버튼（아무 것도 실행하지 않는다）
        alert.addAction(
            UIAlertAction(title: "OK",style: .default,handler: nil)
        )
        // 설정을 여는 버튼
        alert.addAction(
            UIAlertAction(
                title: "설정을 연다",style: .default,
                handler:  { action in
                    UIApplication.shared.open(URL(string: UIApplicationOpenSettingsURLString)!, options: [:], completionHandler: nil)
            })
        )
        // 알람을 표시한다
        self.present(alert, animated: false, completion:nil)
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

