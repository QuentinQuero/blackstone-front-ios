//
//  OneChallengeViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import UIKit

class OneChallengeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scrollLabel: UILabel!
    
    var challenge: Challenge!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = challenge.title
//        self.titleLabel.text = challenge.description
        
//        self.scrollLabel.text = challenge.description
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
