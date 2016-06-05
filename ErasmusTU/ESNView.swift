//
//  ESNView.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 01.06.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit

class ENSView: UIViewController{

    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var linkButton: UIButton!

    @IBAction func linkPressed(sender: AnyObject) {
        let url = NSURL(string: "http://www.unigraz.esnaustria.org/")
        UIApplication.sharedApplication().openURL(url!)
    }
    
    override func viewDidLoad() {
        descLabel.sizeToFit()
        infoLabel.sizeToFit()
        descLabel.layer.cornerRadius = 5
        descLabel.clipsToBounds = true
        infoLabel.layer.cornerRadius = 5
        infoLabel.clipsToBounds = true
        
        
    }
    
}