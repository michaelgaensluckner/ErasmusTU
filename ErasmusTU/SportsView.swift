//
//  SportsView.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 01.06.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit

class SportsView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet var descrpLabel: UILabel!
    let sportType = ["Biking","Running","Swimming"]
    let imageArray = [UIImage(named: "s1.jpg"), UIImage(named: "s2.jpg"), UIImage(named: "s3.jpg")]
    let information = ["There are many beatiful places in and aurround Graz to ride your bicycle. The most famous bikeway in Styria is the Murrrad-Weg. Starting in Muhr the bikeway goes along the river through, also through the center of Graz and further on to Slowenia and Croatia. For mountainbiking hills and mountains next to Graz are worth a trip.","Running along the river Mur is one of the most beautiful ways to explore Graz. On hot summer days running in the Leechwald can be a little bit cooler and is also a piece of nature in the middle of Graz. ... ","swimmin text"]
    let link = ["http://www.radland.steiermark.at","http://www.graz.at/cms/beitrag/10021980/316259/","http://www.graz.at/cms/beitrag/10021934/316259"]
    
    
    
    override func viewDidLoad() {
    
       descrpLabel.layer.cornerRadius = 5
        descrpLabel.clipsToBounds = true
        
        
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.sportType.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("sportsCell", forIndexPath: indexPath) as! SportCollectionViewCell
        cell.imageView?.image = self.imageArray[indexPath.row]
        cell.titleLabel?.text = self.sportType[indexPath.row]
        cell.layer.cornerRadius = 5
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        passedSport = sportType[indexPath.row]
        passedDes = information[indexPath.row]
        passedLink = link[indexPath.row]
    }
    
    
    
}