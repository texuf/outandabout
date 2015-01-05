//
//  DataMgr.swift
//  outandabout
//
//  Created by Austin Ellis on 1/4/15.
//  Copyright (c) 2015 Austin Ellis. All rights reserved.
//

import UIKit

var dataMgr = DataMgr()

struct barcode{
    var id = "undefined"
    var name = "undefined"
}

struct interaction{
    var id = "undefined"
    var barcode_id = "undefined"
    var messages = [String]()
}

class DataMgr: NSObject {
    var interactions = [interaction]()
    
    
    
}
