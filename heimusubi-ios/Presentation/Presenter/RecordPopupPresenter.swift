//
//  RegisterHeimuPresenter.swift
//  heimusubi-ios
//
//  Created by RyoBamboo on 2017/10/23.
//  Copyright © 2017年 RyoBamboo. All rights reserved.
//

import Foundation

protocol RecordPopupPresenter {
    func recordImageTapped()
    func closeImageTapped()
}


class RecordPopupPresenterImplementation: RecordPopupPresenter {
    fileprivate let useCase: RecordPopupUseCase!
    fileprivate let wireframe: RecordPopupWireframe!

    
    
    init(wireframe: RecordPopupWireframe, useCase: RecordPopupUseCase) {
        self.wireframe  = wireframe
        self.useCase    = useCase
    }
    
    
    func recordImageTapped() {
        self.useCase.recordStart()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.useCase.recordStop()
        }
    }
    
    
    func closeImageTapped() {
        self.wireframe.closePopup()
    }
}
