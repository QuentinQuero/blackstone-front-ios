//
//  OneStarshipViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import UIKit

class OneStarshipViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var starship: Starship!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = starship.name
        self.nameLabel.text = starship.name
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
