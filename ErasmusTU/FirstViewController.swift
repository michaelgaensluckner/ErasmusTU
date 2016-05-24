//
//  FirstViewController.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 14.04.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var MustDoButton: UIButton!
    @IBOutlet var CalenderButton: UIButton!
    @IBOutlet var Button_Background: UILabel!
    @IBOutlet var Button_Background_2: UILabel!
    @IBOutlet var Button_Background_1: UILabel!
    @IBOutlet var AchievmentsButton: UIButton!
    
    @IBOutlet var Progress: UILabel!
    
    @IBOutlet var ProgressBar: KDCircularProgress!
    
    override func viewDidLoad() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)

        MustDoButton.layer.cornerRadius = 5
        CalenderButton.layer.cornerRadius = 5
        AchievmentsButton.layer.cornerRadius = 5

        Button_Background.layer.masksToBounds = true
        Button_Background.layer.cornerRadius = 5
        Button_Background.layer.zPosition = -1
        Button_Background.layer.shadowOffset = CGSize(width: 0, height: 5)
        Button_Background.layer.shadowOpacity = 0.6
        Button_Background.layer.shadowRadius = 4.0
        
        
        Button_Background_1.layer.masksToBounds = true
        Button_Background_1.layer.cornerRadius = 5
        Button_Background_1.layer.zPosition = -1

        Button_Background_2.layer.masksToBounds = true
        Button_Background_2.layer.cornerRadius = 5
        Button_Background_2.layer.zPosition = -1

        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        if(SettingOption.nationality == "EU Countries" || SettingOption.nationality == "Iceland/Norway" || SettingOption.nationality == "Switzerland"){
            //MustDoVariables.sumTotal = 8
            var perc = 100 - 100*(MustDoVariables.Meldezettel + MustDoVariables.ValidateStudentID + MustDoVariables.StudentUnionFee + MustDoVariables.ConfirmationOfRegistration)/8
            
            Progress.text = String(perc) + "%"
            ProgressBar.angle = 3.6 * Double(perc)
        }
        else if(SettingOption.nationality == "Other Countries" && SettingOption.longstay){
            //MustDoVariables.sumTotal = 10
            var perc = 100 - 100*(MustDoVariables.Meldezettel + MustDoVariables.ValidateStudentID + MustDoVariables.StudentUnionFee + MustDoVariables.SendVisa + MustDoVariables.ResidencePermit)/10

            Progress.text = String(perc) + "%"
            ProgressBar.angle = 3.6 * Double(perc)
        }
        else if(SettingOption.nationality == "Other Countries" && !SettingOption.longstay){
            //MustDoVariables.sumTotal = 8
            var perc = 100 - 100*(MustDoVariables.Meldezettel + MustDoVariables.ValidateStudentID + MustDoVariables.StudentUnionFee + MustDoVariables.SendVisa)/8

            Progress.text = String(perc) + "%"
            ProgressBar.angle = 3.6 * Double(perc)
        }
        else if(SettingOption.longstay){
            //MustDoVariables.sumTotal = 12
            var perc = 100 - 100*(MustDoVariables.Meldezettel + MustDoVariables.ValidateStudentID + MustDoVariables.StudentUnionFee + MustDoVariables.SendVisa + MustDoVariables.ResidencePermit + MustDoVariables.ConfirmationOfRegistration)/12

            Progress.text = String(perc) + "%"
            ProgressBar.angle = 3.6 * Double(perc)
        }
        else{
            var perc = 100 - 100*(MustDoVariables.Meldezettel + MustDoVariables.ValidateStudentID + MustDoVariables.StudentUnionFee + MustDoVariables.SendVisa + MustDoVariables.ConfirmationOfRegistration)/10

            Progress.text = String(perc) + "%"
            ProgressBar.angle = 3.6 * Double(perc)
        }
    
    
    }
    override func  preferredStatusBarStyle()-> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

