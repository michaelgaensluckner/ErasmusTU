//
//  DepartmentCoordViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 20/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class DepartmentCoordViewController: UIViewController {

    @IBOutlet var Scroll: UIScrollView!
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
