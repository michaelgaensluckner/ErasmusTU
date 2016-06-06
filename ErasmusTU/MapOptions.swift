//
//  MapOptions.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 20.05.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit


class MapOption : UITableViewController {
    
    var Array = [String]()
    
    override func viewDidLoad() {
        Array = ["University","Restaurants/Bars"]
        if (!UIAccessibilityIsReduceTransparencyEnabled()) {
            tableView.backgroundColor = UIColor.clearColor()
            let blurEffect = UIBlurEffect(style: .Light)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            tableView.backgroundView = blurEffectView
            tableView.separatorEffect = UIVibrancyEffect(forBlurEffect: blurEffect)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = Array[indexPath.row]
        
        if !OptionsArray[indexPath.row] {
            cell.accessoryType = .None
        } else if OptionsArray[indexPath.row] {
            cell.accessoryType = .Checkmark
        }
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .Checkmark {
                cell.accessoryType = .None
                OptionsArray[indexPath.row] = false
            } else {
                cell.accessoryType = .Checkmark
                OptionsArray[indexPath.row] = true
            }
        }
    }
}