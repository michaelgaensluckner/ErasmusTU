//
//  InternationalOfficeViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 18/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit
import MessageUI

class InternationalOfficeViewController: UIViewController,  MFMailComposeViewControllerDelegate {
    
    
    @IBOutlet var times: UILabel!
    @IBOutlet var timesInfo: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var phoneInfor: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var addressInfo: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var emailInfo: UILabel!
    @IBOutlet var Functions: UILabel!
    @IBOutlet var funtionsInfo: UILabel!
    @IBOutlet var gitte: UILabel!
    @IBOutlet var gitteInfo: UILabel!
    @IBOutlet var barbara: UILabel!
    @IBOutlet var barbaraInfo: UILabel!
    
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
   
    
    
    
    
    @IBAction func MakeCall(sender: UIButton) {
        let url:NSURL = NSURL(string:"tel://00433168736418")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func SendEmail(sender: UIButton) {
        if( MFMailComposeViewController.canSendMail() ) {
            
            
            let email = MFMailComposeViewController()
        
            email.mailComposeDelegate = self
            email.setSubject("My subject")
            email.setToRecipients(["international@tugraz.at"])
            email.setMessageBody("Some example text", isHTML: false) // or true, if you prefer
        
            self.presentViewController(email , animated: true, completion: nil)

    }
        }
        override func viewDidLoad() {
        super.viewDidLoad()
            
            
            times.layer.cornerRadius = 5
            timesInfo.layer.cornerRadius = 5
            phone.layer.cornerRadius = 5
            phoneInfor.layer.cornerRadius = 5
            address.layer.cornerRadius = 5
            addressInfo.layer.cornerRadius = 5
            email.layer.cornerRadius = 5
            emailInfo.layer.cornerRadius = 5
            Functions.layer.cornerRadius = 5
            funtionsInfo.layer.cornerRadius = 5
            gitte.layer.cornerRadius = 5
            gitteInfo.layer.cornerRadius = 5
            barbara.layer.cornerRadius = 5
            barbaraInfo.layer.cornerRadius = 5
            
            
            times.layer.masksToBounds = true
            timesInfo.layer.masksToBounds = true
            phone.layer.masksToBounds = true
            phoneInfor.layer.masksToBounds = true
            address.layer.masksToBounds = true
            addressInfo.layer.masksToBounds = true
            email.layer.masksToBounds = true
            emailInfo.layer.masksToBounds = true
            Functions.layer.masksToBounds = true
            funtionsInfo.layer.masksToBounds = true
            gitte.layer.masksToBounds = true
            gitteInfo.layer.masksToBounds = true
            barbara.layer.masksToBounds = true
            barbaraInfo.layer.masksToBounds = true
            
            label1.layer.cornerRadius=5
            label2.layer.cornerRadius=5
            label3.layer.cornerRadius=5
            label4.layer.cornerRadius=5
            label5.layer.cornerRadius=5
            label6.layer.cornerRadius=5
            label7.layer.cornerRadius=5
            
            
            label1.layer.masksToBounds=true
            label2.layer.masksToBounds=true
            label3.layer.masksToBounds=true
            label4.layer.masksToBounds=true
            label5.layer.masksToBounds=true
            label6.layer.masksToBounds=true
            label7.layer.masksToBounds=true

            
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        self.dismissViewControllerAnimated(true, completion: nil)
}

}