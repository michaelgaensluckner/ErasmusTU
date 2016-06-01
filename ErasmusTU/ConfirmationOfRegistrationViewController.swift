//
//  SendVisaViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 20..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit
import MapKit

struct ConfirmationOfRegistration{
    static var Task_1 = 0
    static var Task_2 = 0
    
}


class ConfirmationOfRegistrationViewController: UIViewController {

    @IBOutlet var Task_1: UIButton!
    @IBOutlet var Task_1_Done: UILabel!
    
    @IBOutlet var Task_2: UIButton!
    @IBOutlet var Task_2_Done: UILabel!
    @IBOutlet var MapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 47.068275 , longitude: 15.439096)
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 1.0, regionRadius * 1.0)
        MapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    @IBAction func MapbuttonTapped(sender: AnyObject) {
        
        openMapForPlace()
    }
    func openMapForPlace() {
        let latitute:CLLocationDegrees =  47.074628
        let longitute:CLLocationDegrees =  15.440566
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitute, longitute)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Referat Aufenthalts und Sicherheitswesen"
        mapItem.openInMapsWithLaunchOptions(options)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(initialLocation)
        let annotation = Station(latitude: 47.074628, longitude: 15.440566)
        MapView.addAnnotation(annotation)
        // Do any additional setup after loading the view.
        Task_1.layer.masksToBounds = true
        Task_1.layer.cornerRadius = 5
        Task_1.layer.zPosition = -1
        Task_1_Done.layer.cornerRadius = 5
        Task_1_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_1_Done.layer.shadowOpacity = 0.5
        Task_1_Done.layer.shadowRadius = 2
        Task_1_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_1_Done.hidden = (SendVisaTasks.Task_1 == 0)
        
        Task_2.layer.masksToBounds = true
        Task_2.layer.cornerRadius = 5
        Task_2.layer.zPosition = -1
        Task_2_Done.layer.cornerRadius = 5
        Task_2_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_2_Done.layer.shadowOpacity = 0.5
        Task_2_Done.layer.shadowRadius = 2
        Task_2_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_2_Done.hidden = (SendVisaTasks.Task_2 == 0)
        
        
        if(ConfirmationOfRegistration.Task_1 == 1){
            Task_1.alpha = 0.4
        }
        else{
            Task_1.alpha = 1
        }
        if(ConfirmationOfRegistration.Task_2 == 1){
            Task_2.alpha = 0.4
        }
        else{
            Task_2.alpha = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Task_1_Pressed(sender: UIButton) {
        if(ConfirmationOfRegistration.Task_1 == 0){
            ConfirmationOfRegistration.Task_1 = 1
            MustDoVariables.ConfirmationOfRegistration -= 1
            
            Task_1.alpha = 0.4
            Task_1_Done.hidden = false
        }
        else{
            ConfirmationOfRegistration.Task_1 = 0
            MustDoVariables.ConfirmationOfRegistration += 1
            
            Task_1.alpha = 1
            Task_1_Done.hidden = true
            
            if(ConfirmationOfRegistration.Task_2 == 1){
                ConfirmationOfRegistration.Task_2 = 0
                MustDoVariables.ConfirmationOfRegistration += 1
                
                Task_2.alpha = 1
                Task_2_Done.hidden = true
            }
            
        }
        
        NSUserDefaults.standardUserDefaults().setInteger(ConfirmationOfRegistration.Task_1, forKey: "ConfirmationOfRegistration_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(ConfirmationOfRegistration.Task_2, forKey: "ConfirmationOfRegistration_Task_2")
        NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.ConfirmationOfRegistration, forKey: "MustDoVariables_ConfirmationOfRegistration")
        NSUserDefaults.standardUserDefaults().synchronize()

    }
    
    @IBAction func Task_2_Pressed(sender: UIButton) {
        
        if(ConfirmationOfRegistration.Task_2 == 0){
            ConfirmationOfRegistration.Task_2 = 1
            MustDoVariables.ConfirmationOfRegistration -= 1
            
            Task_2.alpha = 0.4
            Task_2_Done.hidden = false
            
            if(ConfirmationOfRegistration.Task_1 == 0){
                ConfirmationOfRegistration.Task_1 = 1
                MustDoVariables.ConfirmationOfRegistration -= 1
                
                Task_1.alpha = 0.4
                Task_1_Done.hidden = false
            }
            
        }
        else{
            ConfirmationOfRegistration.Task_2 = 0
            MustDoVariables.ConfirmationOfRegistration += 1
            
            Task_2.alpha = 1
            Task_2_Done.hidden = true
        }
        NSUserDefaults.standardUserDefaults().setInteger(ConfirmationOfRegistration.Task_1, forKey: "ConfirmationOfRegistration_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(ConfirmationOfRegistration.Task_2, forKey: "ConfirmationOfRegistration_Task_2")
        NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.ConfirmationOfRegistration, forKey: "MustDoVariables_ConfirmationOfRegistration")
        NSUserDefaults.standardUserDefaults().synchronize()

    }

}



