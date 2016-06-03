//
//  RestaurantView.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 24.05.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class RestaurantView: UIViewController,  MKMapViewDelegate {
    
    @IBOutlet var Map: MKMapView!
    
    var passedValue = freetimeItem()
    
    @IBAction func buttonLinkPress(sender: AnyObject) {
        if let url = NSURL(string: passedValue.link){
          UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func adressButton(sender: AnyObject) {

        let annotationToPass = Annotation(latitude: passedValue.latitude, longitude: passedValue.longitude)
        annotationToPass.title = passedValue.title as String
        annotationToPass.subtitle = passedValue.subtitle as String
    }
    
    
    @IBOutlet var buttonAdress: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!
    @IBOutlet weak var labelAdress: UILabel!
    @IBOutlet var buttonLink: UIButton!
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.Map.delegate = self
        
        self.labelTitle.text = passedValue.title
        self.labelTitle.layer.cornerRadius = 5
        self.labelTitle.clipsToBounds = true
        self.labelTitle.font = UIFont.boldSystemFontOfSize(20)
        self.labelSubtitle.text = passedValue.subtitle
        self.labelSubtitle.layer.cornerRadius = 5
        self.labelSubtitle.clipsToBounds = true
        self.buttonLink.setTitle("Website", forState: .Normal)
        self.labelAdress.text = passedValue.adress
        self.labelAdress.layer.cornerRadius = 5
        self.labelAdress.clipsToBounds = true
        
        Map.layer.cornerRadius = 5
        
        

        
        let lat = passedValue.latitude as Double
        let lon = passedValue.longitude as Double

        let annotation = Annotation(latitude: lat, longitude: lon)
        
        
        annotation.title = passedValue.title as String
        annotation.subtitle = passedValue.subtitle as String
        
        let center = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.Map.setRegion(region, animated: true)
        
       Map.addAnnotation(annotation)
        
        
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {        
        showAnnotation = passedValue
        segueMap = true
    }
    
}