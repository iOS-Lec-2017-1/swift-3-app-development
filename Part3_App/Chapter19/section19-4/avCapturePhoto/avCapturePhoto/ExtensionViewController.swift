//
//  ExtensionViewController.swift
//  avCapturePhoto
//
//  Created by yoshiyuki oshige on 2016/09/24.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import Photos

// 델리게이트 부분을 확장한다
extension ViewController:AVCapturePhotoCaptureDelegate {
    // 영상을 캡쳐한다
    func capture(_ captureOutput: AVCapturePhotoOutput,
                 didFinishProcessingPhotoSampleBuffer photoSampleBuffer: CMSampleBuffer?,
                 previewPhotoSampleBuffer: CMSampleBuffer?,
                 resolvedSettings: AVCaptureResolvedPhotoSettings,
                 bracketSettings: AVCaptureBracketedStillImageSettings?,
                 error: Error?) {

        // 사진 프라이버시 인증을 체크한다
        let status = PHPhotoLibrary.authorizationStatus()
        if status == .denied {
            showAlert(appName: "사진")
            return
        }
        
        // 버퍼에서 jpeg 데이터를 꺼낸다
        let photoData = AVCapturePhotoOutput.jpegPhotoDataRepresentation(
            forJPEGSampleBuffer: photoSampleBuffer!,
            previewPhotoSampleBuffer: previewPhotoSampleBuffer)
        
        // 앨범에 저장한다
        PHPhotoLibrary.shared().performChanges({ [unowned self] in
            let creationRequest = PHAssetCreationRequest.forAsset()
            self.done()
            creationRequest.addResource(with: .photo, data: photoData!, options: nil)},
                                               completionHandler: { [unowned self] success, error in
                                                if let aError = error {print(aError)}
                                                self.done()
            }
        )
    }
    
    func done(){
       return
    }
}


