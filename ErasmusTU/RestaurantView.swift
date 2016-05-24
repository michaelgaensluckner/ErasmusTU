//
//  RestaurantView.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 24.05.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import Foundation
import UIKit


class RestaurantView: UIViewController {
    
    var passedValue = freetimeItem()
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!
    @IBOutlet weak var labelAdress: UILabel!
    @IBOutlet weak var labelLink: UILabel!
    
    
    
    override func viewDidLoad() {
        self.labelTitle.text = passedValue.title
        self.labelSubtitle.text = passedValue.subtitle
        self.labelAdress.text = passedValue.adress
        self.labelLink.text = passedValue.link
        


        
        
        
    }
    
}