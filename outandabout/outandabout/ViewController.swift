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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, writeBarcodeBackDelegate	 {
    
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
        
        //pull data from parse, based on install id
        
        //populate list
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
    }
    
    func writeBarcodeBack(value: String)
    {
        println("YEAH!!!!!!!!!! " + value)
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return max(1, dataMgr.interactions.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier:"convo");
        
        if(dataMgr.interactions.count > 0)
        {
            cell.textLabel?.text = dataMgr.interactions[indexPath.row].barcode_id;
        }
        else
        {
            cell.textLabel?.text = "No conversations"
            cell.detailTextLabel?.text = "Scan a barcode with the camera button"
        }
        
        
        return cell;
    }
    
}

