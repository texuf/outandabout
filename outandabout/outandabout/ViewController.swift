//
//  ViewController.swift
//  outandabout
//
//  Created by Austin Ellis on 1/2/15.
//  Copyright (c) 2015 Austin Ellis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var barcodevalue :String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onCameraButton(sender: AnyObject) {
        println("CAMERA BUTTON")
        
        //self.performSegueWithIdentifier("barcode", sender: self)
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


}

