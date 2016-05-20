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
    
    @IBOutlet var LongPress: UILongPressGestureRecognizer!
    
    

    
    @IBOutlet weak var OptionContainer: UIView!
    
    @IBAction func optionButtonPress(sender: AnyObject) {
      
    }
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest //best Accuracy location
        self.locationManager.requestWhenInUseAuthorization()  //request current location
        self.locationManager.startUpdatingLocation() //update location
        self.Map.showsUserLocation = true
        if #available(iOS 9.0, *) {
            self.Map.showsCompass = true
        } else {
            // Fallback on earlier versions
        }
    
                
        // get Annotations from plist
        let annotations = getMapAnnotations()
        
        
       // annotations.pinTintColor = UIColor.greenColor()
        // Add mappoints to Map
        Map.addAnnotations(annotations)


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
    
    
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        print("Annotation slected")
    }
    
    
    
    func getMapAnnotations() -> [Annotation]
    {
        var annotations:Array = [Annotation]()
    
        //load plist file
        var anno_array: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("TUMapAnnotations", ofType: "plist") {
            anno_array = NSArray(contentsOfFile: path)
        }
    
        //iterate and create annotations
        if let items = anno_array {
            for item in items {
                let lat = item.valueForKey("latitude") as! Double
                let long = item.valueForKey("longitude")as! Double
                let annotation = Annotation(latitude: lat, longitude: long)
                annotation.title = item.valueForKey("title") as? String
                annotations.append(annotation)
            }
        }
    
    return annotations
    }

    
    }


class Annotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var latitude: Double
    var longitude:Double
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

    
    
    
    
