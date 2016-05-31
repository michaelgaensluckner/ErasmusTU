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

    @IBAction func MakeCall(sender: UIButton) {
        let url:NSURL = NSURL(string:"tel://00433168736418")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func SendEmail(sender: UIButton) {
        if( MFMailComposeViewController.canSendMail() ) {
            
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            
            //Set the subject and message of the email
            mailComposer.setSubject("Have you heard a swift?")
            mailComposer.setMessageBody("This is what they sound like.", isHTML: false)
            

    }
        }
        override func viewDidLoad() {
        super.viewDidLoad()

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