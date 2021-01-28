//
//  OneChallengeViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import UIKit

class OneChallengeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var challenge: Challenge!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.titleLabel.text = challenge.title
        self.subtitleLabel.text = "challenge.subtitle"
        self.descriptionLabel.text = challenge.description
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
