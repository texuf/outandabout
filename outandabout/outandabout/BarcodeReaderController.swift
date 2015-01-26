//
//  BarcodeReaderController.swift
//  outandabout
//
//  Created by Austin Ellis on 1/4/15.
//  Copyright (c) 2015 Austin Ellis. All rights reserved.
//

import UIKit

import Foundation

class BarcodeReaderController: RSCodeReaderViewController {
    
    var didDelegate: Bool = false
    var delegate: writeBarcodeBackDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.focusMarkLayer.strokeColor = UIColor.redColor().CGColor
        
        self.cornersLayer.strokeColor = UIColor.yellowColor().CGColor
        
        self.tapHandler = { point in
            println(point)
        }
        
        self.barcodesHandler = { barcodes in
            if(!self.didDelegate)
            {
                println("HANDLER!!!!!!")
                self.didDelegate = true
                var barcodevalue :String = ""
                for barcode in barcodes {
                    println(barcode)
                    barcodevalue = barcode.stringValue
                    
                }
                self.delegate?.writeBarcodeBack(barcodevalue)
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
        
    }
	
}
