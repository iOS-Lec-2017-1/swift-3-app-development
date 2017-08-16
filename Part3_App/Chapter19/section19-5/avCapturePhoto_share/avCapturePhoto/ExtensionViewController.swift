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
    // 영상을 캡처한다
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
        
        //　photoData가 nil이 아닐 때 UIImage로 변환한다
        if let data = photoData, let stillImage = UIImage(data: data) {
            // 앨범에 추가한다
            UIImageWriteToSavedPhotosAlbum(stillImage, self, nil, nil)
            // 공유할 이미지를 대입한다
            shareImage = stillImage
        }
    }
}


