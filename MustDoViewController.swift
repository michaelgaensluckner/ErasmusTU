//
//  MustDoViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 8..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit

struct MustDoVariables {
    static var Meldezettel = 3
    static var ResidencePermit = 2
    static var ConfirmationOfRegistration = 2
    static var SendVisa = 2
    
    static var ValidateStudentID = 2
    static var StudentUnionFee = 1

    static var sumTotal = 0
    
}

class MustDoViewController: UIViewController {

    @IBOutlet var RegistrationWithGraz_Button: UIButton!
    @IBOutlet var RegistrationWithGraz_Flag_1: UILabel!
    @IBOutlet var RegistrationWithGraz_Flag_2: UILabel!
    @IBOutlet var RegistrationWithGraz_Flag_3: UILabel!
    
    
    @IBOutlet var ResidencePermit_Button: UIButton!
    @IBOutlet var ResidencePermit_Flag_1: UILabel!
    
    @IBOutlet var ResidencePermit_Flag_2: UILabel!
    @IBOutlet var ConfirmationOfResgisration_Button: UIButton!
    @IBOutlet var ConfirmationOfResgisration_Flag_1: UILabel!
    @IBOutlet var ConfirmationOfResgisration_Flag_2: UILabel!
    
    
    @IBOutlet var StudentUnionFee_Button: UIButton!
    @IBOutlet var StudentUnionFee_Flag_1: UILabel!
    
    
    @IBOutlet var SendVisa_Button: UIButton!
    @IBOutlet var SendVisa_Flag_1: UILabel!
    @IBOutlet var SendVisa_Flag_2: UILabel!
    @IBOutlet var ValidateStudentID_Button: UIButton!
    @IBOutlet var ValidateStudentID_Flag_1: UILabel!
    @IBOutlet var ValidateStudentID_Flag_2: UILabel!
    
    @IBOutlet var RegistrationWithGrazView: UIView!
    @IBOutlet var ResidencePermitView: UIView!
    @IBOutlet var ConfirmationOfRegistrationView: UIView!
    
    @IBOutlet var SendVisaView: UIView!
    @IBOutlet var StudentUnionFeeView: UIView!
    @IBOutlet var ValidateStudentIDView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        RegistrationWithGraz_Button.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_1.layer.masksToBounds = true
        RegistrationWithGraz_Flag_2.layer.masksToBounds = true
        RegistrationWithGraz_Flag_3.layer.masksToBounds = true
        RegistrationWithGraz_Flag_1.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_2.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_3.layer.cornerRadius = 5
        RegistrationWithGraz_Flag_1.layer.zPosition = -1
        RegistrationWithGraz_Flag_2.layer.zPosition = -2
        RegistrationWithGraz_Flag_3.layer.zPosition = -3
        
        
        ResidencePermit_Button.layer.cornerRadius = 5
        ResidencePermit_Flag_1.layer.masksToBounds = true
        ResidencePermit_Flag_1.layer.cornerRadius = 5
        ResidencePermit_Flag_1.layer.zPosition = -1
        ResidencePermit_Flag_2.layer.masksToBounds = true
        ResidencePermit_Flag_2.layer.cornerRadius = 5
        ResidencePermit_Flag_2.layer.zPosition = -1
        
        
        StudentUnionFee_Button.layer.cornerRadius = 5
        StudentUnionFee_Flag_1.layer.masksToBounds = true
        StudentUnionFee_Flag_1.layer.cornerRadius = 5
        StudentUnionFee_Flag_1.layer.zPosition = -1
        
        SendVisa_Button.layer.cornerRadius = 5
        SendVisa_Flag_1.layer.masksToBounds = true
        SendVisa_Flag_1.layer.cornerRadius = 5
        SendVisa_Flag_1.layer.zPosition = -1
        SendVisa_Flag_2.layer.masksToBounds = true
        SendVisa_Flag_2.layer.cornerRadius = 5
        SendVisa_Flag_2.layer.zPosition = -1
        
        ConfirmationOfResgisration_Button.layer.cornerRadius = 5
        ConfirmationOfResgisration_Flag_1.layer.masksToBounds = true
        ConfirmationOfResgisration_Flag_1.layer.cornerRadius = 5
        ConfirmationOfResgisration_Flag_1.layer.zPosition = -1
        ConfirmationOfResgisration_Flag_2.layer.masksToBounds = true
        ConfirmationOfResgisration_Flag_2.layer.cornerRadius = 5
        ConfirmationOfResgisration_Flag_2.layer.zPosition = -1
        
        ValidateStudentID_Button.layer.cornerRadius = 5
        ValidateStudentID_Flag_1.layer.masksToBounds = true
        ValidateStudentID_Flag_1.layer.cornerRadius = 5
        ValidateStudentID_Flag_1.layer.zPosition = -1
        ValidateStudentID_Flag_2.layer.masksToBounds = true
        ValidateStudentID_Flag_2.layer.cornerRadius = 5
        ValidateStudentID_Flag_2.layer.zPosition = -1
        
        
        
        
        if(MustDoVariables.ResidencePermit == 0){
            ResidencePermit_Button.alpha = 0.6
        }
        else{
            ResidencePermit_Button.alpha = 1
        }
        ResidencePermit_Flag_1.hidden = (ResidencePermitTasks.Task_2 == 1)
        ResidencePermit_Flag_2.hidden = (ResidencePermitTasks.Task_1 == 1)
        
        
        
        if(MustDoVariables.SendVisa == 0){
            SendVisa_Button.alpha = 0.6
        }
        else{
            SendVisa_Button.alpha = 1
        }
        SendVisa_Flag_1.hidden = (SendVisaTasks.Task_2 == 1)
        SendVisa_Flag_2.hidden = (SendVisaTasks.Task_1 == 1)
        
        
        if(MustDoVariables.StudentUnionFee == 0){
            StudentUnionFee_Button.alpha = 0.6
        }
        else{
            StudentUnionFee_Button.alpha = 1
        }
        StudentUnionFee_Flag_1.hidden = (StudentUnionFeeTasks.Task_1 == 1)
        
        
        if(MustDoVariables.ValidateStudentID == 0){
            ValidateStudentID_Button.alpha = 0.6
        }
        else{
            ValidateStudentID_Button.alpha = 1
        }
        ValidateStudentID_Flag_1.hidden = (ValidateStudentIDTasks.Task_2 == 1)
        ValidateStudentID_Flag_2.hidden = (ValidateStudentIDTasks.Task_1 == 1)
        
        
        
        if(MustDoVariables.ConfirmationOfRegistration == 0){
            ConfirmationOfResgisration_Button.alpha = 0.6
        }
        else{
            ConfirmationOfResgisration_Button.alpha = 1
        }
        ConfirmationOfResgisration_Flag_1.hidden = (ConfirmationOfRegistration.Task_2 == 1)
        ConfirmationOfResgisration_Flag_2.hidden = (ConfirmationOfRegistration.Task_1 == 1)

        
        if(MustDoVariables.Meldezettel == 0){
            RegistrationWithGraz_Button.alpha = 0.6
        }
        else{
            RegistrationWithGraz_Button.alpha = 1
        }
        RegistrationWithGraz_Flag_1.hidden = (MeldezettelTasks.Task_3 == 1)
        RegistrationWithGraz_Flag_2.hidden = (MeldezettelTasks.Task_2 == 1)
        RegistrationWithGraz_Flag_3.hidden = (MeldezettelTasks.Task_1 == 1)
        
        
        if(SettingOption.nationality == "EU Countries"){
            ResidencePermit_Flag_1.hidden = true
            ResidencePermit_Flag_2.hidden = true
            ResidencePermit_Button.hidden = true
            SendVisa_Button.hidden = true
            SendVisa_Flag_1.hidden = true
            SendVisa_Flag_2.hidden = true
            
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
        }
        else if(SettingOption.nationality == "Iceland/Norway"){
            ResidencePermit_Flag_1.hidden = true
            ResidencePermit_Flag_2.hidden = true
            ResidencePermit_Button.hidden = true
            SendVisa_Button.hidden = true
            SendVisa_Flag_1.hidden = true
            SendVisa_Flag_2.hidden = true
            
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
        }
        else if(SettingOption.nationality == "Switzerland"){
            ResidencePermit_Flag_1.hidden = true
            ResidencePermit_Flag_2.hidden = true
            ResidencePermit_Button.hidden = true
            SendVisa_Button.hidden = true
            SendVisa_Flag_1.hidden = true
            SendVisa_Flag_2.hidden = true
            
            ResidencePermitView.hidden = true
            SendVisaView.hidden = true
            
        }
        else if(SettingOption.nationality == "Other Countries"){
            ConfirmationOfResgisration_Flag_1.hidden = true
            ConfirmationOfResgisration_Flag_2.hidden = true
            ConfirmationOfResgisration_Button.hidden = true
            
            ConfirmationOfRegistrationView.hidden = true
        }
        if(SettingOption.longstay == false){
            
            ResidencePermit_Flag_1.hidden = true
            ResidencePermit_Flag_2.hidden = true
            ResidencePermit_Button.hidden = true
            
            ResidencePermitView.hidden = true
            
        }
        
        
        if(SettingOption.nationality == "EU Countries" || SettingOption.nationality == "Iceland/Norway" || SettingOption.nationality == "Switzerland"){
            MustDoVariables.sumTotal = 8
            NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.sumTotal, forKey: "MustDoVariables_sumTotal")
            NSUserDefaults.standardUserDefaults().synchronize()

        }
        else if(SettingOption.nationality == "Other Countries" && SettingOption.longstay){
            MustDoVariables.sumTotal = 10
            NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.sumTotal, forKey: "MustDoVariables_sumTotal")
            NSUserDefaults.standardUserDefaults().synchronize()

        }
        else if(SettingOption.nationality == "Other Countries" && !SettingOption.longstay){
            MustDoVariables.sumTotal = 8
            NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.sumTotal, forKey: "MustDoVariables_sumTotal")
            NSUserDefaults.standardUserDefaults().synchronize()

        }
        else{
            MustDoVariables.sumTotal = 12
            NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.sumTotal, forKey: "MustDoVariables_sumTotal")
            NSUserDefaults.standardUserDefaults().synchronize()

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
