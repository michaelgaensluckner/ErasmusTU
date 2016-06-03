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
    
    //@IBOutlet var TitleLabel: UILabel!
    @IBOutlet var SportBlueLabel: UILabel!
    @IBOutlet var RestBlueLabel: UILabel!
    @IBOutlet var SportButton: UIButton!
    @IBOutlet var RestButton: UIButton!
    
    @IBOutlet var esnBlueLabel: UILabel!
    @IBOutlet var esnButton: UIButton!
    override func viewDidLoad() {
        
        //TitleLabel.layer.cornerRadius = 5
        //TitleLabel.clipsToBounds = true
        SportButton.layer.cornerRadius = 5
        
        SportBlueLabel.layer.cornerRadius = 5
        SportBlueLabel.layer.masksToBounds = true

        
        RestButton.layer.cornerRadius = 5

        RestBlueLabel.layer.cornerRadius = 5
        RestBlueLabel.layer.masksToBounds = true
        
        esnButton.layer.cornerRadius = 5
        
        esnBlueLabel.layer.cornerRadius = 5
        esnBlueLabel.layer.masksToBounds = true
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
    }
    override func  preferredStatusBarStyle()-> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}