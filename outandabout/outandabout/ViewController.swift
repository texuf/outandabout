//
//  ViewController.swift
//  outandabout
//
//  Created by Austin Ellis on 1/2/15.
//  Copyright (c) 2015 Austin Ellis. All rights reserved.
//

import UIKit

protocol writeBarcodeBackDelegate {
    func writeBarcodeBack(value: String)
}

class ViewController: UIViewController, writeBarcodeBackDelegate	 {
    
    var barcodevalue :String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onCameraButton(sender: AnyObject) {
        println("CAMERA BUTTON")
        
        self.performSegueWithIdentifier("cameraPopover", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("VIEW DID LOAD " + barcodevalue)
    }

    override func viewDidAppear(animated: Bool) {
        
        println("VIEW DID Appear " + barcodevalue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let secondVC = segue.destinationViewController as BarcodeReaderController
        secondVC.delegate = self;
        
        println("PREP!! "	)
    }
    
    func writeBarcodeBack(value: String)
    {
        println("YEAH!!!!!!!!!! " + value)
    }


    //@IBAction func unwindToList(segue: UIStoryboardSegue) {
    //        println("UNWIND" + 	(segue.destinationViewController as BarcodeReaderController).barcodevalue	 )
    //}
}

