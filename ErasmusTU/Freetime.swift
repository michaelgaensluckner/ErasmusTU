//
//  Freetime.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 17.04.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//
import Foundation
import UIKit
import MapKit


struct freetimeItem{
    var title = ""
    var subtitle = ""
    var adress = ""
    var longitude = 0.0
    var latitude = 0.0
    var link = ""
}

class FreetimeViewController: UITableViewController, MKMapViewDelegate {
    
    var freetimeArray = [freetimeItem]()
    var tmp = freetimeItem()
    var valueToPass = freetimeItem()
    
    func getItems()
    {

        //load plist file
        var itemArray: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("FreetimeAnnotations", ofType: "plist") {
            itemArray = NSArray(contentsOfFile: path)
        }
        
        for item in itemArray!{
            let tit = item.valueForKey("title") as! String
            let sub = item.valueForKey("subtitle") as! String
            let adr = item.valueForKey("adress") as! String
            let lat = item.valueForKey("latitude") as! Double
            let lon = item.valueForKey("longitude")as! Double
            let lin = item.valueForKey("link") as! String
            tmp = freetimeItem(title: tit, subtitle: sub, adress: adr, longitude: lon, latitude: lat, link: lin)
            freetimeArray.append(tmp)
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
      getItems()
      self.tableView.backgroundColor = UIColor.clearColor()
       }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return freetimeArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("FreetimeCell", forIndexPath: indexPath) as UITableViewCell!
        cell.layer.cornerRadius = 5
        cell.layer.borderColor = UIColor.clearColor().CGColor
        cell.layer.backgroundColor = UIColor.clearColor().CGColor
        cell.layer.masksToBounds = true
        cell.textLabel?.backgroundColor = UIColor.clearColor()

        let cellHeight: CGFloat = 42.0
        let blueLabel = UILabel(frame: CGRectMake(40, 60, 30, 42))
        blueLabel.center = CGPoint(x: view.bounds.width, y: cellHeight / 2.0)
        let myColor = UIColor(red: 21/255.0, green: 96/255.0, blue: 132/255.0, alpha: 1.0)
        blueLabel.backgroundColor = myColor
        cell.addSubview(blueLabel)
        
        
        let whiteLabel = UILabel(frame: CGRectMake(40, 60, view.bounds.width - 12, 42))
        whiteLabel.backgroundColor = UIColor.whiteColor()
        whiteLabel.center = CGPoint(x: view.bounds.width / 2.0, y: cellHeight / 2.0)
        whiteLabel.layer.cornerRadius = 5
        whiteLabel.clipsToBounds = true
        cell.addSubview(whiteLabel)
        ////alex
        whiteLabel.font = UIFont(name: "HelveticaNeue", size: 14)
        /////

        
        var tableArray = [String]()
        
        for item in freetimeArray
        {
          let title = item.title as String
          tableArray.append(title)
        }
        
        whiteLabel.text = "      "+tableArray[indexPath.section]
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 42.0
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath = tableView.indexPathForSelectedRow!
        valueToPass = freetimeArray[indexPath.section]
        let viewController = segue.destinationViewController as! RestaurantView
        viewController.passedValue = valueToPass
        
    }

    


    
    

    

    
   

}
