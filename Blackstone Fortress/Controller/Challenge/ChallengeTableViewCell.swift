//
//  ChallengeTableViewCell.swift
//  Blackstone Fortress
//
//  Created by Carl on 02/02/2021.
//

import UIKit

class ChallengeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var whiteView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addShadow()
    }
    
    func configure(title: String) {
        titleLabel.text = title
    }
    
    private func addShadow() {
        whiteView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
        whiteView.layer.shadowRadius = 2.0
        whiteView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        whiteView.layer.shadowOpacity = 2.0
        whiteView.layer.cornerRadius = 10
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)

         if selected {
            whiteView.backgroundColor = UIColor.lightGray
         }
         else {
             whiteView.backgroundColor = UIColor.white
         }
     }

}
