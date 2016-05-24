//
//  SendVisaViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 20..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit
import MapKit
struct MeldezettelTasks{
    static var Task_1 = 0
    static var Task_2 = 0
    static var Task_3 = 0
}


class MeldezettelViewController: UIViewController {

    @IBOutlet var Task_1: UIButton!
    @IBOutlet var Task_1_Done: UILabel!
    
    @IBOutlet var Task_2: UIButton!
    @IBOutlet var Task_2_Done: UILabel!
    
    @IBOutlet var Task_3: UIButton!
    @IBOutlet var Task_3_Done: UILabel!
    
    @IBOutlet var MapView: MKMapView!
    
    
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        MapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Task_1.layer.masksToBounds = true
        Task_1.layer.cornerRadius = 5
        Task_1.layer.zPosition = -1
        Task_1_Done.layer.cornerRadius = 5
        Task_1_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_1_Done.layer.shadowOpacity = 0.5
        Task_1_Done.layer.shadowRadius = 2
        Task_1_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_1_Done.hidden = (MeldezettelTasks.Task_1 == 0)
        
        Task_2.layer.masksToBounds = true
        Task_2.layer.cornerRadius = 5
        Task_2.layer.zPosition = -1
        Task_2_Done.layer.cornerRadius = 5
        Task_2_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_2_Done.layer.shadowOpacity = 0.5
        Task_2_Done.layer.shadowRadius = 2
        Task_2_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_2_Done.hidden = (MeldezettelTasks.Task_2 == 0)
        
        Task_3.layer.masksToBounds = true
        Task_3.layer.cornerRadius = 5
        Task_3.layer.zPosition = -1
        Task_3_Done.layer.cornerRadius = 5
        Task_3_Done.layer.shadowOffset = CGSize(width: -5, height: 0)
        Task_3_Done.layer.shadowOpacity = 0.5
        Task_3_Done.layer.shadowRadius = 2
        Task_3_Done.layer.shadowColor = UIColor.blackColor().CGColor
        Task_3_Done.hidden = (MeldezettelTasks.Task_2 == 0)
        
        if(MeldezettelTasks.Task_1 == 1){
            Task_1.alpha = 0.4
        }
        else{
            Task_1.alpha = 1
        }
        if(MeldezettelTasks.Task_2 == 1){
            Task_2.alpha = 0.4
        }
        else{
            Task_2.alpha = 1
        }
        if(MeldezettelTasks.Task_3 == 1){
            Task_3.alpha = 0.4
        }
        else{
            Task_3.alpha = 1
        }
        
        centerMapOnLocation(initialLocation)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Task_1_Pressed(sender: UIButton) {
        if(MeldezettelTasks.Task_1 == 0){
            MeldezettelTasks.Task_1 = 1
            MustDoVariables.Meldezettel -= 1
            
            Task_1.alpha = 0.4
            Task_1_Done.hidden = false
        }
        else{
            MeldezettelTasks.Task_1 = 0
            MustDoVariables.Meldezettel += 1
            
            Task_1.alpha = 1
            Task_1_Done.hidden = true
            
            if(MeldezettelTasks.Task_2 == 1){
                MeldezettelTasks.Task_2 = 0
                MustDoVariables.Meldezettel += 1
                
                Task_2.alpha = 1
                Task_2_Done.hidden = true
            }
            if(MeldezettelTasks.Task_3 == 1){
                MeldezettelTasks.Task_3 = 0
                MustDoVariables.Meldezettel += 1
                
                Task_3.alpha = 1
                Task_3_Done.hidden = true
            }
        }
    }
    
    @IBAction func Task_2_Pressed(sender: UIButton) {
        
        if(MeldezettelTasks.Task_2 == 0){
            MeldezettelTasks.Task_2 = 1
            MustDoVariables.Meldezettel -= 1
            
            Task_2.alpha = 0.4
            Task_2_Done.hidden = false
            
            if(MeldezettelTasks.Task_1 == 0){
                MeldezettelTasks.Task_1 = 1
                MustDoVariables.Meldezettel -= 1
                
                Task_1.alpha = 0.4
                Task_1_Done.hidden = false
            }
            
        }
        else{
            MeldezettelTasks.Task_2 = 0
            MustDoVariables.Meldezettel += 1
            
            Task_2.alpha = 1
            Task_2_Done.hidden = true
            if(MeldezettelTasks.Task_3 == 1){
                MeldezettelTasks.Task_3 = 0
                MustDoVariables.Meldezettel += 1
                
                Task_3.alpha = 1
                Task_3_Done.hidden = true
            }
        }
    }
    @IBAction func Task_3_Pressed(sender: UIButton) {
        
        if(MeldezettelTasks.Task_3 == 0){
            MeldezettelTasks.Task_3 = 1
            MustDoVariables.Meldezettel -= 1
            
            Task_3.alpha = 0.4
            Task_3_Done.hidden = false
            
            if(MeldezettelTasks.Task_1 == 0){
                MeldezettelTasks.Task_1 = 1
                MustDoVariables.Meldezettel -= 1
                
                Task_1.alpha = 0.4
                Task_1_Done.hidden = false
            }
            if(MeldezettelTasks.Task_2 == 0){
                MeldezettelTasks.Task_2 = 1
                MustDoVariables.Meldezettel -= 1
                
                Task_2.alpha = 0.4
                Task_2_Done.hidden = false
            }
            
        }
        else{
            MeldezettelTasks.Task_3 = 0
            MustDoVariables.Meldezettel += 1
            
            Task_3.alpha = 1
            Task_3_Done.hidden = true
        }
    }


}



