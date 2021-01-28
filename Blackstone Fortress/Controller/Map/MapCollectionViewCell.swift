//
//  MapCollectionViewCell.swift
//  Blackstone Fortress
//
//  Created by Carl on 28/01/2021.
//

import UIKit

class MapCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var testLabel: UILabel!
    
    func configure(with countryName: String) {
        testLabel.text = countryName
    }
}
