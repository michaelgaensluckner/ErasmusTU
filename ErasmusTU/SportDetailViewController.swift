//
//  SportDetailViewController.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 01.06.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit
var passedSport = ""
var passedDes = ""
var passedLink = ""

class SportDetailViewController: UIViewController {
    @IBOutlet var descrLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var linkButton: UIButton!
    
    
    @IBAction func linkPressed(sender: AnyObject) {
        if let url = NSURL(string: passedLink){
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    override func viewDidLoad() {
        titleLabel.text = passedSport
        descrLabel.text = passedDes
        descrLabel.layer.cornerRadius = 5
        descrLabel.clipsToBounds = true
        
    }
}

