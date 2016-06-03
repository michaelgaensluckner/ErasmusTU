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
    
    @IBOutlet var labelAlte1: UILabel!
    @IBOutlet var internationalAlte: UILabel!
    @IBOutlet var textAlte: UITextView!
    @IBOutlet var buttonAlte: UIButton!
    @IBOutlet var libraryAlte: UILabel!
    @IBOutlet var copyStoreAltre: UILabel!
    @IBOutlet var times1Alte: UILabel!
    @IBOutlet var times2Alte: UILabel!
    @IBOutlet var times3Alte: UILabel!
    @IBOutlet var labelAlte2: UILabel!
    
    
    @IBOutlet var mensaNeue: UILabel!
    @IBOutlet var biblioNeue: UILabel!
    @IBOutlet var copyStoreNeue: UILabel!
    @IBOutlet var times1Neue: UILabel!
    @IBOutlet var times2Neue: UILabel!
    @IBOutlet var times3Neue: UILabel!
    @IBOutlet var labelNeue1: UILabel!
    @IBOutlet var labelNeue2: UILabel!
    @IBOutlet var textNeue: UITextView!
    
    @IBOutlet var mensaInfeld: UILabel!
    @IBOutlet var times1Infeld: UILabel!
    @IBOutlet var textInfeld: UITextView!
    @IBOutlet var biblioInfeld: UILabel!
    @IBOutlet var copyStoreInfeld: UILabel!
    @IBOutlet var labelInfeld1: UILabel!
    @IBOutlet var labelInfeld2: UILabel!
    @IBOutlet var times2Infeld: UILabel!
    @IBOutlet var times3Infel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
     var  dataToTransfer = freetimeItem()
    
    @IBAction func MapAlte(sender: UIButton) {
        dataToTransfer.title = "Alte"
        dataToTransfer.latitude = 47.069267
        dataToTransfer.longitude = 15.450321
        showAnnotation = dataToTransfer
        segueMap=true
        self.performSegueWithIdentifier("CampusToMap", sender: self)
        
    }
    
    
    @IBAction func MapNeue(sender: UIButton) {
        dataToTransfer.title = "Neue"
        dataToTransfer.latitude = 47.064952
        dataToTransfer.longitude = 15.452515
        showAnnotation = dataToTransfer
        segueMap=true
        self.performSegueWithIdentifier("CampusToMap", sender: self)
        
    }
    
    
    @IBAction func MapInfeld(sender: UIButton) {
        dataToTransfer.title = "Inffeldgasse"
        dataToTransfer.latitude = 47.058465
        dataToTransfer.longitude = 15.458775
        showAnnotation = dataToTransfer
        segueMap=true
        self.performSegueWithIdentifier("CampusToMap", sender: self)
        
    }
    private func updateMinZoomScaleForSize(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = minScale
        
        scrollView.zoomScale = minScale
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        updateMinZoomScaleForSize(view.bounds.size)
    }
    private func updateConstraintsForSize(size: CGSize) {
        
        let yOffset = max(0, (size.height - imageView.frame.height) / 2)
        imageViewTopConstraint.constant = yOffset
        imageViewBottomConstraint.constant = yOffset
        
        let xOffset = max(0, (size.width - imageView.frame.width) / 2)
        imageViewLeadingConstraint.constant = xOffset
        imageViewTrailingConstraint.constant = xOffset
        
        view.layoutIfNeeded()
    }
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
        
        
        
        labelAlte1.layer.cornerRadius=5
        internationalAlte.layer.cornerRadius=5
        //textAlte.layer.cornerRadius=5
        libraryAlte.layer.cornerRadius=5
        copyStoreAltre.layer.cornerRadius=5
        times1Alte.layer.cornerRadius=5
        times2Alte.layer.cornerRadius=5
        times3Alte.layer.cornerRadius=5
        labelAlte2.layer.cornerRadius=5
        
        mensaNeue.layer.cornerRadius=5
        biblioNeue.layer.cornerRadius=5
        copyStoreNeue.layer.cornerRadius=5
        times1Neue.layer.cornerRadius=5
        times2Neue.layer.cornerRadius=5
        times3Neue.layer.cornerRadius=5
        labelNeue1.layer.cornerRadius=5
        labelNeue2.layer.cornerRadius=5
        //textNeue.layer.cornerRadius=5
        
        
        mensaInfeld.layer.cornerRadius=5
        times1Infeld.layer.cornerRadius=5
        //textInfeld.layer.cornerRadius=5
        biblioInfeld.layer.cornerRadius=5
        copyStoreInfeld.layer.cornerRadius=5
        labelInfeld1.layer.cornerRadius=5
        labelInfeld2.layer.cornerRadius=5
        times2Infeld.layer.cornerRadius=5
        times3Infel.layer.cornerRadius=5
        
        
        
        
        labelAlte1.layer.masksToBounds=true
        internationalAlte.layer.masksToBounds=true
        //textAlte.layer.masksToBounds=true
        libraryAlte.layer.masksToBounds=true
        copyStoreAltre.layer.masksToBounds=true
        times1Alte.layer.masksToBounds=true
        times2Alte.layer.masksToBounds=true
        times3Alte.layer.masksToBounds=true
        labelAlte2.layer.masksToBounds=true
        
        mensaNeue.layer.masksToBounds=true
        biblioNeue.layer.masksToBounds=true
        copyStoreNeue.layer.masksToBounds=true
        times1Neue.layer.masksToBounds=true
        times2Neue.layer.masksToBounds=true
        times3Neue.layer.masksToBounds=true
        labelNeue1.layer.masksToBounds=true
        labelNeue2.layer.masksToBounds=true
        // textNeue.layer.masksToBounds=true
        
        
        mensaInfeld.layer.masksToBounds=true
        times1Infeld.layer.masksToBounds=true
       // textInfeld.layer.masksToBounds=true
        biblioInfeld.layer.masksToBounds=true
        copyStoreInfeld.layer.masksToBounds=true
        labelInfeld1.layer.masksToBounds=true
        labelInfeld2.layer.masksToBounds=true
        times2Infeld.layer.masksToBounds=true
        times3Infel.layer.masksToBounds=true
        

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


extension AlteControllerViewController: UIScrollViewDelegate {
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    func scrollViewDidZoom(scrollView: UIScrollView) {
        updateConstraintsForSize(view.bounds.size)
    }
}
