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

var OptionsArray = [true,false,false]
var valueToPass = ""

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet weak var tabBar: UITabBarItem!
    @IBOutlet weak var Map: MKMapView!
    
    @IBOutlet var LongPress: UILongPressGestureRecognizer!
    
    
    func popoverPresentationControllerDidDismissPopover(popoverPresentationController: UIPopoverPresentationController) {
        self.Map.removeAnnotations(self.Map.annotations)
        if OptionsArray[0] == true
        {
            let annotationsUni = getUniAnnotations()
            Map.addAnnotations(annotationsUni)
        }
        if OptionsArray[1] == true
        {
            let annotationsFree = getFreeAnnotations()
            Map.addAnnotations(annotationsFree)
        }
        if OptionsArray[2] == true
        {
            //let annotations = getUseAnnotations()
            //Map.addAnnotations(annotations)
        }
        
    }
    
    
    @IBOutlet weak var OptionContainer: UIView!
    

    
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
        let annotations = getUniAnnotations()

        
       // annotations.pinTintColor = UIColor.greenColor()
        // Add mappoints to Map
        Map.addAnnotations(annotations)


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPopover"
        {
            let popoverViewController = segue.destinationViewController
            
            popoverViewController.popoverPresentationController?.delegate = self
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
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
    
    
    
    func getUniAnnotations() -> [Annotation]
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

    func getFreeAnnotations() -> [Annotation]
    {
        var annotations:Array = [Annotation]()
        
        //load plist file
        var anno_array: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("FreetimeAnnotations", ofType: "plist") {
            anno_array = NSArray(contentsOfFile: path)
        }

        //iterate and create annotations
        if let items = anno_array {
            for item in items {
                let lat = item.valueForKey("latitude") as! Double
                let long = item.valueForKey("longitude")as! Double
                let annotation = Annotation(latitude: lat, longitude: long)
                annotation.title = item.valueForKey("title") as? String
                annotation.subtitle = item.valueForKey("subtitle") as? String
                annotations.append(annotation)
            }
        }
        
        return annotations
    }
    
    
    func getUseAnnotations() -> [Annotation]
    {
        var annotations:Array = [Annotation]()
        
        //load plist file
        var anno_array: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("UsefulAnnotations", ofType: "plist") {
            anno_array = NSArray(contentsOfFile: path)
        }
        
        //iterate and create annotations
        if let items = anno_array {
            for item in items {
                let lat = item.valueForKey("latitude") as! Double
                let long = item.valueForKey("longitude")as! Double
                let annotation = Annotation(latitude: lat, longitude: long)
                annotation.title = item.valueForKey("title") as? String
                annotation.subtitle = item.valueForKey("subtitle") as? String
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

    
    
    
    
