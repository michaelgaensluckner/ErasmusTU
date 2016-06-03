//
//  BankInfoViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 03/06/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class BankInfoViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    var incomingData: String = "http://unigraz.esnaustria.org/banks-graz"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string: incomingData );
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);        // Do any additional setup after loading the view.
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
