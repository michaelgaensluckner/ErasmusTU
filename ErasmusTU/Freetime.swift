//
//  Freetime.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 17.04.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//
import Foundation
import UIKit


struct freetimeItem{
    var title = ""
    var subtitle = ""
    var adress = ""
    var longitude = 0.0
    var latitude = 0.0
    var link = ""
}

class FreetimeViewController: UITableViewController {
    

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
        
        //var counter = 0
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
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return freetimeArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       // var cell = tableView.dequeueReusableCellWithIdentifier("FreetimeCell", forIndexPath: indexPath) as! UITableViewCell
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("FreetimeCell", forIndexPath: indexPath) as UITableViewCell!

        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.backgroundColor = UIColor.whiteColor().CGColor
        cell.layer.masksToBounds = true
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        
        var tableArray = [String]()
        
        for item in freetimeArray
        {
          let title = item.title as String
          tableArray.append(title)
        }
        
        cell.textLabel?.text = tableArray[indexPath.section]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60.0
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath = tableView.indexPathForSelectedRow!
        valueToPass = freetimeArray[indexPath.section]
        let viewController = segue.destinationViewController as! RestaurantView
        viewController.passedValue = valueToPass
        
    }
    
    

    

    
   

}
