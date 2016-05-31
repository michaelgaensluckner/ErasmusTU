//
//  AchievmentsViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 8..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit

class AchievmentsViewController: UIViewController {

    @IBOutlet var RegistrationWithGraz_Button: UIButton!
    @IBOutlet var RegistrationWithGraz_Flag_1: UILabel!
    
    
    @IBOutlet var ResidencePermit_Button: UIButton!
    @IBOutlet var ResidencePermit_Flag_1: UILabel!
    
    @IBOutlet var ConfirmationOfResgisration_Button: UIButton!
    @IBOutlet var ConfirmationOfResgisration_Flag_1: UILabel!
    
    
    @IBOutlet var StudentUnionFee_Button: UIButton!
    @IBOutlet var StudentUnionFee_Flag_1: UILabel!
    
    
    
    
    @IBOutlet var SendVisa_Button: UIButton!
    @IBOutlet var SendVisa_Flag_1: UILabel!
    @IBOutlet var ValidateStudentID_Button: UIButton!
    @IBOutlet var ValidateStudentID_Flag_1: UILabel!
    
    @IBOutlet var RegistrationWithGrazView: UIView!
    @IBOutlet var ResidencePermitView: UIView!
    @IBOutlet var ConfirmationOfRegistrationView: UIView!
    
    @IBOutlet var SendVisaView: UIView!
    @IBOutlet var StudentUnionFeeView: UIView!
    @IBOutlet var ValidateStudentIDView: UIView!

    @IBOutlet var RegistrationWithGrazNum: UILabel!
    @IBOutlet var ResidencePermitNum: UILabel!
    @IBOutlet var ConfirmationOfRegistrationNum: UILabel!
    @IBOutlet var SendVisaNum: UILabel!
    @IBOutlet var StudentUnionFeeNum: UILabel!
    @IBOutlet var ValidateStudentIDNum: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RegistrationWithGraz_Button.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_1.layer.masksToBounds = true
        RegistrationWithGraz_Flag_1.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_1.layer.zPosition = -1
        
        
        ResidencePermit_Button.layer.cornerRadius = 5
        ResidencePermit_Flag_1.layer.masksToBounds = true
        ResidencePermit_Flag_1.layer.cornerRadius = 5
        ResidencePermit_Flag_1.layer.zPosition = -1
        
        
        StudentUnionFee_Button.layer.cornerRadius = 5
        StudentUnionFee_Flag_1.layer.masksToBounds = true
        StudentUnionFee_Flag_1.layer.cornerRadius = 5
        StudentUnionFee_Flag_1.layer.zPosition = -1
        
        SendVisa_Button.layer.cornerRadius = 5
        SendVisa_Flag_1.layer.masksToBounds = true
        SendVisa_Flag_1.layer.cornerRadius = 5
        SendVisa_Flag_1.layer.zPosition = -1
        
        ConfirmationOfResgisration_Button.layer.cornerRadius = 5
        ConfirmationOfResgisration_Flag_1.layer.masksToBounds = true
        ConfirmationOfResgisration_Flag_1.layer.cornerRadius = 5
        ConfirmationOfResgisration_Flag_1.layer.zPosition = -1
        
        
        ValidateStudentID_Button.layer.cornerRadius = 5
        ValidateStudentID_Flag_1.layer.masksToBounds = true
        ValidateStudentID_Flag_1.layer.cornerRadius = 5
        ValidateStudentID_Flag_1.layer.zPosition = -1
        
        
        RegistrationWithGrazNum.text = String(3-MustDoVariables.Meldezettel)+"/3"
    
        ResidencePermitNum.text = String(2-MustDoVariables.ResidencePermit)+"/2"
        
        ConfirmationOfRegistrationNum.text = String(2-MustDoVariables.ConfirmationOfRegistration)+"/2"
        
        SendVisaNum.text = String(2-MustDoVariables.SendVisa)+"/2"
        
        StudentUnionFeeNum.text = String(1-MustDoVariables.StudentUnionFee)+"/1"
        
        ValidateStudentIDNum.text = String(2-MustDoVariables.ValidateStudentID)+"/2"
        
    
        if(SettingOption.nationality == "EU Countries"){
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
        }
        else if(SettingOption.nationality == "Iceland/Norway"){
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
        }
        else if(SettingOption.nationality == "Switzerland"){
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
            
        }
        else if(SettingOption.nationality == "Other Countries"){
            ConfirmationOfRegistrationView.hidden = true
        }
        if(SettingOption.longstay == false){
            ResidencePermitView.hidden = true
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
