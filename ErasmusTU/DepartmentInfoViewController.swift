//
//  DepartmentInfoViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 23/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class DepartmentInfoViewController: UIViewController {
    var incomingData: String = ""
    
    
    @IBOutlet var WebView: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       
           
        let url = NSURL (string: incomingData );
        let requestObj = NSURLRequest(URL: url!);
        WebView.loadRequest(requestObj);
          

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
