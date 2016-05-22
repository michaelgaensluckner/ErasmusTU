//
//  StudentUnionFeeViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 20..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit

struct StudentUnionFeeTasks{
    static var Task_1 = 0
    
}

class StudentUnionFeeViewController: UIViewController {

    @IBOutlet var Task_1: UIButton!
    @IBOutlet var Task_1_Done: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Task_1.layer.masksToBounds = true
        Task_1.layer.cornerRadius = 5
        
        Task_1.layer.zPosition = -1
        
        
        Task_1_Done.layer.cornerRadius = 5
        Task_1_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_1_Done.layer.shadowOpacity = 0.5
        Task_1_Done.layer.shadowRadius = 2
        Task_1_Done.layer.shadowColor = UIColor.blackColor().CGColor
        
        Task_1_Done.hidden = (StudentUnionFeeTasks.Task_1 == 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Task_1_Pressed(sender: AnyObject) {
        if(StudentUnionFeeTasks.Task_1 == 0){
            StudentUnionFeeTasks.Task_1 = 1
            MustDoVariables.StudentUnionFee -= 1
            
            Task_1.alpha = 0.4
            Task_1_Done.hidden = false
        }
        else{
            StudentUnionFeeTasks.Task_1 = 0
            MustDoVariables.StudentUnionFee += 1
            
            Task_1.alpha = 1
            Task_1_Done.hidden = true
        }
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
