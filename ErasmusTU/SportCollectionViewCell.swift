//
//  SportCollectionViewCell.swift
//  ErasmusTU
//
//  Created by Michael Gänsluckner on 01.06.16.
//  Copyright © 2016 Michael Gänsluckner. All rights reserved.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    var Item: SportItem!{
        didSet{
            updateUI()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    func updateUI(){
        titleLabel?.text! = Item.title
        imageView?.image! = Item.image
    }
}
