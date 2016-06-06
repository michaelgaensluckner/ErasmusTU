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
    
    
    @IBOutlet var timesInfo: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var emailInfo: UILabel!
    @IBOutlet var Functions: UILabel!
    @IBOutlet var funtionsInfo: UILabel!
    
    
    
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    
    var  dataToTransfer = freetimeItem()
    
    @IBAction func goMap(sender: UIButton) {
        dataToTransfer.title = "International Office"
        dataToTransfer.latitude =  47.067709
        dataToTransfer.longitude = 15.44957
        showAnnotation = dataToTransfer
        segueMap=true
        self.performSegueWithIdentifier("InternationalToMap", sender: self)    }
    
    
    
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
            
            
            timesInfo.layer.cornerRadius = 5
            address.layer.cornerRadius = 5
            emailInfo.layer.cornerRadius = 5
            Functions.layer.cornerRadius = 5
            funtionsInfo.layer.cornerRadius = 5
           
            
            
            timesInfo.layer.masksToBounds = true
            address.layer.masksToBounds = true
            emailInfo.layer.masksToBounds = true
            Functions.layer.masksToBounds = true
            funtionsInfo.layer.masksToBounds = true
            
            
            label6.layer.cornerRadius=5
            label7.layer.cornerRadius=5
            
            
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