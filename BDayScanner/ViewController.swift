//
//  ViewController.swift
//  BDayScanner
//
//  Created by Florian Thiévent on 07.07.20.
//  Copyright © 2020 Florian Thiévent. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate, ScannerDelegate {

    private var scanner: Scanner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scanner = Scanner(withDelegate: self)
        guard let scanner = self.scanner else {
            return
        }
        scanner.requestCaptureSessionStartRunning()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Mark - AVFoundation delegate methods
    func cameraView() -> UIView {
        return self.view
    }
    
    func delegateViewController() -> UIViewController {
        return self
    }
    
    func scanCompleted(withCode code: String) {
        print(code)
    }
}

