//
//  OneCharacterViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 25/01/2021.
//

import UIKit
import Kingfisher

class OneCharacterViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var character: Classic!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = character.name
        testLabel.text = "\(character.life)"
        let url = URL(string: "http://localhost:3000/\(character.image)")
        imageView.kf.setImage(with: url)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
