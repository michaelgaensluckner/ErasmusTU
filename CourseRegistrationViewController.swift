//
//  CourseRegistrationViewController.swift
//  ErasmusTU
//
//  Created by Julia Martinez Ferrer on 19/05/16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class CourseRegistrationViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var pdfView: UIWebView!
    @IBOutlet var youtubeView: UIWebView!
    
    
    @IBOutlet var scroll: UIScrollView!
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.pdfView
    }
    
    var path = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let YoutubeLink:String = "http://www.youtube.com/embed/-0GyYnlBlOQ"
        let width=300
        let height=200
        let frame=5
        let Code:NSString = "<iframe width=\(width) height=\(height) src=\(YoutubeLink) frameborder=\(frame) allowfullscrenn> </iframe>";
        self.youtubeView.loadHTMLString(Code as String, baseURL: nil)
        
        
        path = NSBundle.mainBundle().pathForResource("registerCourse", ofType: "pdf")!
        let url = NSURL.fileURLWithPath(path )
        self.pdfView.loadRequest(NSURLRequest (URL: url))
        
        scroll.maximumZoomScale = 10.0
        scroll.minimumZoomScale = 1.0
        // Dispose of any resources that can be recreated.
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
