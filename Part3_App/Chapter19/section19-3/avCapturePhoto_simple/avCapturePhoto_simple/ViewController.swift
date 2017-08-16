//
//  ViewController.swift
//  avCapturePhoto_simple
//
//  Created by yoshiyuki oshige on 2016/09/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    // 프리뷰 용의 뷰와 Outlet 접속해 둔다
    @IBOutlet weak var previewView: UIView!
    // 인스턴스 작성
    var session = AVCaptureSession()
    var photoOutput = AVCapturePhotoOutput()
    // 통지 센터를 만든다
    let notification = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 세션 실행 중이라면 중단한다
        if session.isRunning {
            return
        }
        // 입출력 설정
        setupInputOutput()
        // 프리뷰 레이어 설정
        setPreviewLayer()
        // 세션 시작
        session.startRunning()
        // 디바이스가 회전했을 때에 통지하는 이벤트 핸들러를 설정한다
        notification.addObserver(self,
                                 selector: #selector(self.changedDeviceOrientation(_:)),
                                 name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    // 캡쳐 버튼으로 실행한다
    @IBAction func takePhoto(_ sender: Any) {
        let captureSetting = AVCapturePhotoSettings()
        captureSetting.flashMode = .auto
        captureSetting.isAutoStillImageStabilizationEnabled = true
        captureSetting.isHighResolutionPhotoEnabled = false
        // 캡쳐 이미지 처리는 델리게이트에 맡긴다
        photoOutput.capturePhoto(with: captureSetting, delegate: self)
    }
    
    // 입출력 설정
    func setupInputOutput(){
        // 해상도 지정
        session.sessionPreset = AVCaptureSessionPresetPhoto
        
        // 입력 설정
        do {
            // 디바이스 구하기
            let device = AVCaptureDevice.defaultDevice(
                withDeviceType: AVCaptureDeviceType.builtInWideAngleCamera,
                mediaType: AVMediaTypeVideo,
                position: .back)
            
            // 입력원
            let input = try AVCaptureDeviceInput(device: device)
            if session.canAddInput(input){
                session.addInput(input)
            } else {
                print("세션에 입력을 추가할 수 없었다")
                return
            }
        } catch  let error as NSError {
            print("카메라가 없다 \(error)")
            return
        }
        
        // 출력 설정
        if session.canAddOutput(photoOutput) {
            session.addOutput(photoOutput)
        } else {
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
            return
        }
        videoLayer.frame = view.bounds
        videoLayer.masksToBounds = true
        videoLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        // previewView에 추가한다
        previewView.layer.addSublayer(videoLayer)
    }
    
    // 디바이스 방향이 바꼈을 때 호출되는 메서드
    func changedDeviceOrientation(_ notification :Notification) {
        // photoOutput.connection 회전 방향을 디바이스와 맞춘다
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
