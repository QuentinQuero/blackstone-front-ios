//
//  MapCollectionViewCell.swift
//  Blackstone Fortress
//
//  Created by Carl on 28/01/2021.
//

import UIKit
import Kingfisher

class MapCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func configure(with mapURL: String) {
        let url = URL(string: "http://localhost:3000/\(mapURL)")
        imageView.kf.setImage(with: url)
    }
}
