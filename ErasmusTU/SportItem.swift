//
//  SportItem.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 01.06.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit

class SportItem{
    
    var title = ""
    var image: UIImage!
    var description = ""
    var link = ""
    
    init(title: String, image: UIImage, description: String, link: String)
    {
        self.title = title
        self.image = image
        self.description = description
        self.link = link
    }
    
}


func createItems() -> [SportItem]{
    
    return [
      SportItem(title:"Biking", image: UIImage(named: "s1")!, description: "biking is fun", link: "www.google.at"),
      SportItem(title:"Running", image: UIImage(named: "s1")!, description: "running is fun", link: "www.google.at"),
    ]
}