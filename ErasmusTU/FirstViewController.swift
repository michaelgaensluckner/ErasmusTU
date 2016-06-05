//
//  FirstViewController.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 14.04.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit
public extension UIDevice {
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 where value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone8,4":                               return "iPhone SE"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8":return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    
}



class FirstViewController: UIViewController {
    let modelName = UIDevice.currentDevice().modelName
    @IBOutlet var MustDoButton: UIButton!
    @IBOutlet var CalenderButton: UIButton!
    @IBOutlet var Button_Background: UILabel!
    @IBOutlet var Button_Background_2: UILabel!
    @IBOutlet var Button_Background_1: UILabel!
    @IBOutlet var AchievmentsButton: UIButton!
    
    @IBOutlet var Progress: UILabel!
    
    @IBOutlet var ProgressBar: KDCircularProgress!
    
    @IBOutlet var ThisLabel: UILabel!
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
        ValidateStudentIDTasks.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("ValidateStudentIDTasks_Task_1")
        ValidateStudentIDTasks.Task_2 = NSUserDefaults.standardUserDefaults().integerForKey("ValidateStudentIDTasks_Task_2")

        ConfirmationOfRegistration.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("ConfirmationOfRegistration_Task_1")
        ConfirmationOfRegistration.Task_2 = NSUserDefaults.standardUserDefaults().integerForKey("ConfirmationOfRegistration_Task_2")
        
        MeldezettelTasks.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("MeldezettelTasks_Task_1")
        MeldezettelTasks.Task_2 = NSUserDefaults.standardUserDefaults().integerForKey("MeldezettelTasks_Task_2")
        MeldezettelTasks.Task_3 = NSUserDefaults.standardUserDefaults().integerForKey("MeldezettelTasks_Task_3")

        SendVisaTasks.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("SendVisaTasks_Task_1")
        SendVisaTasks.Task_2 = NSUserDefaults.standardUserDefaults().integerForKey("SendVisaTasks_Task_2")
        
        StudentUnionFeeTasks.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("StudentUnionFeeTasks_Task_1")

        ResidencePermitTasks.Task_1 = NSUserDefaults.standardUserDefaults().integerForKey("ResidencePermitTasks_Task_1")
        ResidencePermitTasks.Task_2 = NSUserDefaults.standardUserDefaults().integerForKey("ResidencePermitTasks_Task_2")
        
        MustDoVariables.Meldezettel = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_Meldezettel")
        MustDoVariables.ResidencePermit = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_ResidencePermit")
        MustDoVariables.ConfirmationOfRegistration = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_ConfirmationOfRegistration")
        MustDoVariables.SendVisa = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_SendVisa")
        MustDoVariables.ValidateStudentID = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_ValidateStudentID")
        MustDoVariables.StudentUnionFee = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_StudentUnionFee")
        MustDoVariables.sumTotal = NSUserDefaults.standardUserDefaults().integerForKey("MustDoVariables_sumTotal")
        
        SettingOption.longstay = NSUserDefaults.standardUserDefaults().boolForKey("SettingOption_longstay")
        SettingOption.donepressed = NSUserDefaults.standardUserDefaults().boolForKey("SettingOption_donepressed")
        SettingOption.nationality = NSUserDefaults.standardUserDefaults().stringForKey("SettingOption_nationality")!
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        print(NSUserDefaults.standardUserDefaults().dictionaryRepresentation());

        
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

