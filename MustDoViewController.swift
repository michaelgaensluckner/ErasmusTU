//
//  MustDoViewController.swift
//  ErasmusTU
//
//  Created by 맥북 on 2016. 5. 8..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit

class MustDoViewController: UIViewController {

    @IBOutlet var RegistrationWithGraz_Button: UIButton!
    @IBOutlet var RegistrationWithGraz_Flag_1: UILabel!
    @IBOutlet var RegistrationWithGraz_Flag_2: UILabel!
    @IBOutlet var RegistrationWithGraz_Flag_3: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

        
        // Do any additional setup after loading the view.
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
