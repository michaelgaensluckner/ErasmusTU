//
//  TUOnlineViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 19/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class TUOnlineViewController: UIViewController {
    
    @IBOutlet var WebPage: UIWebView!
    
    let dpath: String = "https://online.tugraz.at/tug_online/webnav.ini"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: dpath );
        let requestObj = NSURLRequest(URL: url!);
        WebPage.loadRequest(requestObj);
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
