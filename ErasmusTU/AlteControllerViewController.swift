//
//  AlteControllerViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 17/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class AlteControllerViewController: UIViewController {
    @IBOutlet var label1: UILabel!

 
    @IBAction func AlteSegment(sender: UISegmentedControl) {
         let selectedIndex: Int = sender.selectedSegmentIndex
        if (selectedIndex == 1){
            label1.text="Go to NEUE"
            //performSegueWithIdentifier("AlteToNeue", sender: self)
        }
        if (selectedIndex == 2){
            label1.text="Go to INFELD"
            //performSegueWithIdentifier("AlteToInfeld", sender: self)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
