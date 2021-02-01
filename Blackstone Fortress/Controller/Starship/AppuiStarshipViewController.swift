//
//  AppuiStarshipViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 27/01/2021.
//

import UIKit
import Kingfisher

class AppuiStarshipViewController: UIViewController {
    
    @IBOutlet weak var explorateurLabel: UILabel!
    @IBOutlet weak var appuiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    
    var starship: Starship!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getImage()
        self.explorateurLabel.text = "\(starship.explorateur)"
        self.appuiLabel.text = starship.appui
        self.backImage.makeRounded()
        self.backImage.alpha = 0.85
    }
    
    private func getImage() {
        let url = URL(string: "http://localhost:3000/\(starship.image)")
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
