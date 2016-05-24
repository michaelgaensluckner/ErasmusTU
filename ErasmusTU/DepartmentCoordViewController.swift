//
//  DepartmentCoordViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 20/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class DepartmentCoordViewController: UIViewController {
    
    var  dataToTransfer: String = "none"
    
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
