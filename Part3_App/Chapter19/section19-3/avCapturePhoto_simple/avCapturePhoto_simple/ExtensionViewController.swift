//
//  ExtensionViewController.swift
//  avCapturePhoto_simple
//
//  Created by yoshiyuki oshige on 2016/09/26.
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
        
        // 버퍼에서 jpeg 데이터를 꺼낸다
        let photoData = AVCapturePhotoOutput.jpegPhotoDataRepresentation(
            forJPEGSampleBuffer: photoSampleBuffer!,
            previewPhotoSampleBuffer: previewPhotoSampleBuffer)
        //　photoData가 nil이 아닐 때 UIImage로 변환한다
        if let data = photoData {
            if let stillImage = UIImage(data: data) {
                // 앨범에 추가한다
                UIImageWriteToSavedPhotosAlbum(stillImage, self, nil, nil)
            }
        }
    }
}
