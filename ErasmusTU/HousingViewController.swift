//
//  HousingViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 01/06/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class HousingViewController: UIViewController {
var  dataToTransfer: String = ""
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    
    @IBAction func TuInfo(sender: UIButton) {
       
    dataToTransfer="http://portal.tugraz.at/portal/page/portal/Internationale_Beziehungen/Incomings/IncomingExchangeStudents/Vorbereitung"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
    
     }
    
    @IBAction func EsnInfo(sender: UIButton) {
        dataToTransfer="http://unigraz.esnaustria.org/living-graz"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
    }
    @IBAction func Oaed(sender: UIButton) {
        dataToTransfer="http://housing.oead.at/de/unterkuenfte/graz-de/haeuser-de?view=application&city=graz"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
        
    }
    
    @IBAction func Wist(sender: UIButton) {
        dataToTransfer="http://www.wist.vc-graz.ac.at/wordpress/"
        let url = NSURL (string: dataToTransfer );
        UIApplication.sharedApplication().openURL(url!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label1.layer.cornerRadius = 5
        label2.layer.cornerRadius = 5
        label3.layer.cornerRadius = 5
        label4.layer.cornerRadius = 5
        
        label1.layer.masksToBounds=true
        label2.layer.masksToBounds=true
        label3.layer.masksToBounds=true
        label4.layer.masksToBounds=true
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius  = 5
        button4.layer.cornerRadius = 5
        
        
        
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
