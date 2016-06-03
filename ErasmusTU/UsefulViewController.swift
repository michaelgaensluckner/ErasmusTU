//
//  UsefulViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 01/06/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class UsefulViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    let dpath: String = "http://unigraz.esnaustria.org/banks-graz"
    @IBAction func BankButton(sender: UIButton) {
         let url = NSURL (string: dpath );
        UIApplication.sharedApplication().openURL(url!)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        
        label1.layer.cornerRadius = 5
        label2.layer.cornerRadius = 5
        label3.layer.cornerRadius = 5
        
        label1.layer.masksToBounds=true
        label2.layer.masksToBounds=true
        label3.layer.masksToBounds=true
        
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
