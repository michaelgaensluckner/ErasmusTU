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

let lightestGrayColor = UIColor(red: 224, green: 224, blue: 224, alpha: 1)

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
        //self.tableView.backgroundColor = lightestGrayColor
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

        cell.layer.cornerRadius = 8
        cell.layer.borderWidth = 1
        cell.layer.backgroundColor = UIColor.whiteColor().CGColor
        cell.layer.masksToBounds = true
        cell.textLabel?.backgroundColor = UIColor.whiteColor()
        
        let cellHeight: CGFloat = 42.0
        let greenLabel = UILabel(frame: CGRectMake(40, 60, 30, 42))
        greenLabel.center = CGPoint(x: view.bounds.width, y: cellHeight / 2.0)
        greenLabel.backgroundColor = UIColor.greenColor()
        cell.addSubview(greenLabel)
        
        
        let label = UILabel(frame: CGRectMake(40, 60, view.bounds.width - 20, 42))
        label.backgroundColor = UIColor.clearColor()
        label.center = CGPoint(x: view.bounds.width / 2.0, y: cellHeight / 2.0)
        label.layer.cornerRadius = 8
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.whiteColor().CGColor
        cell.addSubview(label)

        
        
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
        return 42.0
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
