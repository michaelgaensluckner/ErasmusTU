//
//  AlteControllerViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 17/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class AlteControllerViewController: UIViewController {
    
    @IBOutlet var InfeldView: UIView!
    @IBOutlet var AlteView: UIView!

    @IBOutlet var NeueView: UIView!
 
    @IBAction func AlteSegment(sender: UISegmentedControl) {
         let selectedIndex: Int = sender.selectedSegmentIndex
        if (selectedIndex == 0){
            AlteView.hidden=false
            NeueView.hidden=true
            InfeldView.hidden=true
        }
            if (selectedIndex == 1){
            AlteView.hidden=true
            NeueView.hidden=false
            InfeldView.hidden=true
        
            
        }
        if (selectedIndex == 2){
            AlteView.hidden=true
            NeueView.hidden=true
            InfeldView.hidden=false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AlteView.hidden=false
        NeueView.hidden=true
        InfeldView.hidden=true

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
