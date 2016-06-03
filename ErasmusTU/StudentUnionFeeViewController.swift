//
//  StudentUnionFeeViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 20..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit
import MapKit
struct StudentUnionFeeTasks{
    static var Task_1 = 0
    
}

class StudentUnionFeeViewController: UIViewController {

    @IBOutlet var Task_1: UIButton!
    @IBOutlet var Task_1_Done: UILabel!
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
        let latitute:CLLocationDegrees =  47.068275
        let longitute:CLLocationDegrees =  15.439096
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitute, longitute)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Graz City Service Center"
        mapItem.openInMapsWithLaunchOptions(options)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(initialLocation)
        let annotation = Station(latitude: 47.068275, longitude: 15.439096)
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
        
        Task_1_Done.hidden = (StudentUnionFeeTasks.Task_1 == 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Task_1_Pressed(sender: AnyObject) {
        if(StudentUnionFeeTasks.Task_1 == 0){
            StudentUnionFeeTasks.Task_1 = 1
            MustDoVariables.StudentUnionFee -= 1
            
            Task_1.alpha = 0.4
            Task_1_Done.hidden = false
        }
        else{
            StudentUnionFeeTasks.Task_1 = 0
            MustDoVariables.StudentUnionFee += 1
            
            Task_1.alpha = 1
            Task_1_Done.hidden = true
        }
        NSUserDefaults.standardUserDefaults().setInteger(StudentUnionFeeTasks.Task_1, forKey: "StudentUnionFeeTasks_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(StudentUnionFeeTasks.Task_1, forKey: "StudentUnionFeeTasks_Task_1")
        NSUserDefaults.standardUserDefaults().setInteger(MustDoVariables.StudentUnionFee, forKey: "MustDoVariables_StudentUnionFee")
        NSUserDefaults.standardUserDefaults().synchronize()

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
