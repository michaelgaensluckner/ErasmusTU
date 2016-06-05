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
    let sportType = ["Biking","Running","Swimming","Fitness","USZ Rosenhain"]
    let imageArray = [UIImage(named: "s1.jpg"), UIImage(named: "s2.jpg"), UIImage(named: "s3.jpg"), UIImage(named: "s4.jpg"), UIImage(named: "s5.jpg")]
    let information = ["There are many beatiful places in and aurround Graz to ride your bicycle. The most famous bikeway in Styria is the Murrrad-Weg. Starting in Muhr the bikeway goes along the river Mur, through the center of Graz and further on to Slowenia and Croatia. \nFor mountainbiking hills and mountains next to Graz are worth a trip.",
        "Running along the river Mur is one of the most beautiful ways to explore Graz. On hot summer days running in the Leechwald can be a little bit cooler and is also a piece of nature in the middle of Graz. ",
        "Swimming is fun in summer and winter and is a very popular sport. Graz offers indoor and outdoor swimming pools for training or just for fun. There are also some lakes arround Graz which are nice in summer. The link below shows a list of public swimming pools in Graz.",
        "To stay or get in shape during your stay in Graz fitness centers may be a good option. You can choose from a big variety of fitness centers - only for women -  only for men - cheap - expensive \nThe link below shows a list of fitness centers in Graz and more detail information.",
        "The USZ Rosenhain is the University Sports Center in Graz. You can participate in many different cousres (link below) or train in your freetime. There are three different sports halls, tennis and beachvolleyball courts, a running track and many more. \nEvery year is an event you should not miss, the USI-Fest (University-Sports-Institue-Party). Starting with a funny relay race  it's a big party and a nice way to celebrate the end of the semester.\n\nMo-Fr: 07:00 - 21:00 \nSa-Su: 09:00-19:00"]
    
    let link = ["http://www.radland.steiermark.at","http://www.graz.at/cms/beitrag/10021980/316259/","http://www.holding-graz.at/nc/freizeit/baeder.html","http://www.stadt-graz.at/sport/fitnessstudios-graz.html","https://sportinstitut.uni-graz.at/en/"]
    

    override func viewDidLoad() {
        descrpLabel.sizeToFit()
        descrpLabel.layer.cornerRadius = 5
        descrpLabel.clipsToBounds = true
        descrpLabel.sizeToFit()
        
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
        passedSport = sportType[indexPath.row]
        passedDes = information[indexPath.row]
        passedLink = link[indexPath.row]
    }
    
    
    
}