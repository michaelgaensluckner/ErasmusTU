//
//  SendVisaViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 20..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit

struct ValidateStudentIDTasks{
    static var Task_1 = 0
    static var Task_2 = 0
    
}

import UIKit

class ValidatteStudentIDViewController: UIViewController {

    @IBOutlet var Task_1: UIButton!
    @IBOutlet var Task_1_Done: UILabel!
    
    @IBOutlet var Task_2: UIButton!
    @IBOutlet var Task_2_Done: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Task_1.layer.masksToBounds = true
        Task_1.layer.cornerRadius = 5
        Task_1.layer.zPosition = -1
        Task_1_Done.layer.cornerRadius = 5
        Task_1_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_1_Done.layer.shadowOpacity = 0.5
        Task_1_Done.layer.shadowRadius = 2
        Task_1_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_1_Done.hidden = (ValidateStudentIDTasks.Task_1 == 0)
        
        Task_2.layer.masksToBounds = true
        Task_2.layer.cornerRadius = 5
        Task_2.layer.zPosition = -1
        Task_2_Done.layer.cornerRadius = 5
        Task_2_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_2_Done.layer.shadowOpacity = 0.5
        Task_2_Done.layer.shadowRadius = 2
        Task_2_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_2_Done.hidden = (ValidateStudentIDTasks.Task_2 == 0)
        
        
        if(ValidateStudentIDTasks.Task_1 == 1){
            Task_1.alpha = 0.4
        }
        else{
            Task_1.alpha = 1
        }
        if(ValidateStudentIDTasks.Task_2 == 1){
            Task_2.alpha = 0.4
        }
        else{
            Task_2.alpha = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Task_1_Pressed(sender: UIButton) {
        if(ValidateStudentIDTasks.Task_1 == 0){
            ValidateStudentIDTasks.Task_1 = 1
            MustDoVariables.ValidateStudentID -= 1
            
            Task_1.alpha = 0.4
            Task_1_Done.hidden = false
        }
        else{
            ValidateStudentIDTasks.Task_1 = 0
            MustDoVariables.ValidateStudentID += 1
            
            Task_1.alpha = 1
            Task_1_Done.hidden = true
            
            if(ValidateStudentIDTasks.Task_2 == 1){
                ValidateStudentIDTasks.Task_2 = 0
                MustDoVariables.ValidateStudentID += 1
                
                Task_2.alpha = 1
                Task_2_Done.hidden = true
            }
            
        }
        
        NSUserDefaults.standardUserDefaults().setInteger(ValidateStudentIDTasks.Task_1, forKey: "ValidateStudentIDTasks_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(ValidateStudentIDTasks.Task_2, forKey: "ValidateStudentIDTasks_Task_2")
        NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.ValidateStudentID, forKey: "MustDoVariables_ValidateStudentID")
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }
    
    @IBAction func Task_2_Pressed(sender: UIButton) {
        
        if(ValidateStudentIDTasks.Task_2 == 0){
            ValidateStudentIDTasks.Task_2 = 1
            MustDoVariables.ValidateStudentID -= 1
            
            Task_2.alpha = 0.4
            Task_2_Done.hidden = false
            
            if(ValidateStudentIDTasks.Task_1 == 0){
                ValidateStudentIDTasks.Task_1 = 1
                MustDoVariables.ValidateStudentID -= 1
                
                Task_1.alpha = 0.4
                Task_1_Done.hidden = false
            }
            
        }
        else{
            ValidateStudentIDTasks.Task_2 = 0
            MustDoVariables.ValidateStudentID += 1
            
            Task_2.alpha = 1
            Task_2_Done.hidden = true
        }
        NSUserDefaults.standardUserDefaults().setInteger(ValidateStudentIDTasks.Task_1, forKey: "ValidateStudentIDTasks_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(ValidateStudentIDTasks.Task_2, forKey: "ValidateStudentIDTasks_Task_2")
        NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.ValidateStudentID, forKey: "MustDoVariables_ValidateStudentID")
        NSUserDefaults.standardUserDefaults().synchronize()

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



