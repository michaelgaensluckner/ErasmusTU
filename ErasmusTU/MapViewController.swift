//
//  MapViewController.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 14.04.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import MapKit
import UIKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var tabBar: UITabBarItem!
    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.tabBarController?.tabBar.hidden = true
        var location = CLLocationCoordinate2DMake(47.069267, 15.450321)
        var span = MKCoordinateSpanMake(0.1, 0.1)
        var region = MKCoordinateRegion(center: location, span: span)
        
        Map.setRegion(region, animated: true)
        
        
        var location_alte = CLLocationCoordinate2DMake(47.069267, 15.450321)
        var location_neue = CLLocationCoordinate2DMake(47.064952,15.452515)
        var location_inff = CLLocationCoordinate2DMake(47.058465, 15.458775)

        var annotation_alte = MKPointAnnotation()
        annotation_alte.coordinate = location_alte
        annotation_alte.title = "TU Graz"
        annotation_alte.subtitle = "Alte Technik"
        
        var annotation_neue = MKPointAnnotation()
        annotation_neue.coordinate = location_neue
        annotation_neue.title = "TU Graz"
        annotation_neue.subtitle = "Neue Technik"
        
        var annotation_inff = MKPointAnnotation()
        annotation_inff.coordinate = location_inff
        annotation_inff.title = "TU Graz"
        annotation_inff.subtitle = "Inffeldgründe"
       
        
        Map.addAnnotation(annotation_alte)
        Map.addAnnotation(annotation_neue)
        Map.addAnnotation(annotation_inff)
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}