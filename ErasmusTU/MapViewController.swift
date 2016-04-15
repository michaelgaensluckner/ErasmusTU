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

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var tabBar: UITabBarItem!
    @IBOutlet weak var Map: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest //best Accuracy location
        self.locationManager.requestWhenInUseAuthorization()  //request current location
        self.locationManager.startUpdatingLocation() //update location
        self.Map.showsUserLocation = true
        
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
    
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        self.Map.setRegion(region, animated: true)
        self.locationManager.stopUpdatingLocation()
        
    }
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error in map: " + error.localizedDescription)
    }
    
    }
    
    
    
    
    
    
    
    
    
    
