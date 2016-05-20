//
//  TUMainViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 20/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class TUMainViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var label5: UILabel!
    
    @IBOutlet var label4: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var CampusButton: UIButton!
    @IBOutlet var OfficeButton: UIButton!
    
    @IBOutlet var OnlineButton: UIButton!
    
    @IBOutlet var DepartmentButton: UIButton!
    
    @IBOutlet var CourseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CampusButton.layer.cornerRadius = 5
        OfficeButton.layer.cornerRadius = 5
        OnlineButton.layer.cornerRadius = 5
        DepartmentButton.layer.cornerRadius = 5
        CourseButton.layer.cornerRadius = 5
        label1.layer.cornerRadius = 5
        label2.layer.cornerRadius = 5
        label3.layer.cornerRadius = 5
        label4.layer.cornerRadius = 5
        label5.layer.cornerRadius = 5
        label1.layer.masksToBounds=true
        label2.layer.masksToBounds=true
        label3.layer.masksToBounds=true
        label4.layer.masksToBounds=true
        label5.layer.masksToBounds=true
        
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
