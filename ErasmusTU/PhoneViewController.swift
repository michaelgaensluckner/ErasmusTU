//
//  PhoneViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 01/06/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class PhoneViewController: UIViewController {

    
    @IBOutlet var label1: UIView!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label6: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var  dataToTransfer: String = ""
    
    @IBAction func phoneInfo(sender: UIButton) {
        dataToTransfer = "http://unigraz.esnaustria.org/mobile-phone-information"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)


    }
    
    @IBAction func freeSim(sender: UIButton) {
        dataToTransfer = "http://unigraz.esnaustria.org/free-sim-card"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
    }
    @IBAction func comparator(sender: UIButton) {
        dataToTransfer = "https://www.tarife.at/telefon-internet/handytarife"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
    }
    
    @IBAction func A1(sender: UIButton) {
        dataToTransfer = "https://www.a1.net/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Hot(sender: UIButton) {
        dataToTransfer = "https://www.hot.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Tmobile(sender: UIButton) {
        dataToTransfer = "http://www.t-mobile.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Drei(sender: UIButton) {
        dataToTransfer = "https://www.drei.at/portal/de/privat/index.html"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Telering(sender: UIButton) {
        dataToTransfer = "http://www.telering.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Tele2(sender: UIButton) {
        dataToTransfer = "https://www.tele2.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)   }
    
    @IBAction func Yesss(sender: UIButton) {
        dataToTransfer = "https://www.yesss.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    @IBAction func Bob(sender: UIButton) {
        dataToTransfer = "http://www.bob.at/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.layer.cornerRadius = 5
        label2.layer.cornerRadius = 5
        label3.layer.cornerRadius = 5
        label6.layer.cornerRadius = 5
       
        
        label1.layer.masksToBounds=true
        label2.layer.masksToBounds=true
        label3.layer.masksToBounds=true
        label6.layer.masksToBounds=true
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        
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
