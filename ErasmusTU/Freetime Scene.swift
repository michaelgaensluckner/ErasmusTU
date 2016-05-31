//
//  Freetime Scene.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 31.05.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit


class FreetimeScene: UIViewController{
    
    
    @IBOutlet var RestBlueLabel: UILabel!
    @IBOutlet var SportButton: UIButton!
    @IBOutlet var RestButton: UIButton!
    
    override func viewDidLoad() {
        SportButton.layer.cornerRadius = 5
        RestButton.layer.cornerRadius = 5
        RestBlueLabel.layer.cornerRadius = 5
        
    }
}