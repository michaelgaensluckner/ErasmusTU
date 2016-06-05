//
//  DepartmentCoordViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 20/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class DepartmentCoordViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    @IBOutlet var label10: UILabel!
    @IBOutlet var label11: UILabel!
    @IBOutlet var lable12: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button10: UIButton!
    @IBOutlet var button11: UIButton!
    @IBOutlet var button12: UIButton!
    

    
    var  dataToTransfer: String = ""
    
    @IBOutlet var Scroll: UIScrollView!
    
    
    @IBAction func mechanical(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=350B71F79FC31B56&pPersonenGruppe=3"
        self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    @IBAction func informatics(sender: UIButton) {
        dataToTransfer="https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=CBEBBC5E283D4D51&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    @IBAction func architecture(sender: UIButton) {
        dataToTransfer="https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=4B9FD052DF069DEC&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
    
    }
    
    
    @IBAction func electrical(sender: UIButton) {
        dataToTransfer="https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=A71D6B823ACDF07D&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
    
    }
    
    
    @IBAction func chemial(sender: UIButton) {
        dataToTransfer="https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=6D7BECA408FEB74E&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    @IBAction func civil(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=1BD084DD94F6A6B4&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    @IBAction func molecular(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=C72B956A216E7641&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    @IBAction func chemistry(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=6099ED0709A79794&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
    }
    
    
    @IBAction func biomedical(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=B410E0684ECCDF82&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
    }
    
    
    
    @IBAction func enviromental(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=A994144F8B0834BB&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    @IBAction func technical(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=BB3F4A7830D4C7CD&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    @IBAction func math(sender: UIButton) {
        dataToTransfer = "https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=34D56E4050AD1612&pPersonenGruppe=3"
          self.performSegueWithIdentifier("DepartmentToInfo", sender: self)
        
    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "DepartmentToInfo" {
            let myRedViewController: UIViewController = segue.destinationViewController as UIViewController
            myRedViewController.setValue(dataToTransfer, forKey: "incomingData")
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Scroll.contentSize.height = 1000
        
        label1.layer.cornerRadius=5
        label2.layer.cornerRadius=5
        label3.layer.cornerRadius=5
        label4.layer.cornerRadius=5
        label5.layer.cornerRadius=5
        label6.layer.cornerRadius=5
        label7.layer.cornerRadius=5
        label8.layer.cornerRadius=5
        label9.layer.cornerRadius=5
        label10.layer.cornerRadius=5
        label11.layer.cornerRadius=5
        lable12.layer.cornerRadius=5
        
        
        
        label1.layer.masksToBounds=true
        label2.layer.masksToBounds=true
        label3.layer.masksToBounds=true
        label4.layer.masksToBounds=true
        label5.layer.masksToBounds=true
        label6.layer.masksToBounds=true
        label7.layer.masksToBounds=true
        label8.layer.masksToBounds=true
        label9.layer.masksToBounds=true
        label10.layer.masksToBounds=true
        label11.layer.masksToBounds=true
        lable12.layer.masksToBounds=true
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        button5.layer.cornerRadius = 5
        button6.layer.cornerRadius = 5
        button7.layer.cornerRadius = 5
        button8.layer.cornerRadius = 5
        button9.layer.cornerRadius = 5
        button10.layer.cornerRadius = 5
        button11.layer.cornerRadius = 5
        button12.layer.cornerRadius = 5
        
        
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
