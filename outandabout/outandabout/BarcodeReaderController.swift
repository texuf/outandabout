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
    
    var barcodevalue :String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.focusMarkLayer.strokeColor = UIColor.redColor().CGColor
        
        self.cornersLayer.strokeColor = UIColor.yellowColor().CGColor
        
        self.tapHandler = { point in
            println(point)
        }
        
        self.barcodesHandler = { barcodes in
            for barcode in barcodes {
                println(barcode)
                self.barcodevalue = barcode.stringValue
                self.performSegueWithIdentifier("returnvalue", sender: self)
                //self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
        
    }



    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "returnvalue" {
            var segueBack = segue.destinationViewController as ViewController
            segueBack.barcodevalue = barcodevalue
        }
    }

}
