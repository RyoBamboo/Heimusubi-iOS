//
//  RegisterHeimuUseCase.swift
//  heimusubi-ios
//
//  Created by RyoBamboo on 2017/10/23.
//  Copyright © 2017年 RyoBamboo. All rights reserved.
//

import Foundation
import CoreBluetooth

protocol RecordPopupUseCase {
    func recordStart()
    func recordStop()
}

class RecordPopupUseCaseImplementation: RecordPopupUseCase {
    fileprivate var recorder: AudioRecord!
    
    init() {
        self.recorder = AudioRecord()
    }
    
    func recordStart() {
        self.recorder.start()
    }
    
    func recordStop() {
        self.recorder.stop()
        self.recorder.upload()
    }

}

