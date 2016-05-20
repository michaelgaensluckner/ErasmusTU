//
//  TUTutorialViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 19/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class TUTutorialViewController: UIViewController {

    @IBOutlet var tutorialView: UIWebView!
   
    var path = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        path = NSBundle.mainBundle().pathForResource("TUonline", ofType: "pdf")!
        let url = NSURL.fileURLWithPath(path )
        self.tutorialView.loadRequest(NSURLRequest (URL: url))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()    
    
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
