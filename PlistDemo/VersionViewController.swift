//
//  VersionViewController.swift
//  PlistDemo
//
//  Created by Aress Software Pvt Ltd on 30/08/19.
//  Copyright © 2019 Aress Software Pvt Ltd. All rights reserved.
//

import UIKit

class VersionViewController: UIViewController {
    
    var pass : String?
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = pass {
            lblName.text = name
        }
    }
    
   

}
