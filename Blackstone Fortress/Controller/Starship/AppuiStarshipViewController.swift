//
//  AppuiStarshipViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 27/01/2021.
//

import UIKit

class AppuiStarshipViewController: UIViewController {
    
    @IBOutlet weak var explorateurLabel: UILabel!
    @IBOutlet weak var appuiLabel: UILabel!

    var starship: Starship!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.explorateurLabel.text = "Explorateur : \(starship.explorateur)"
        self.appuiLabel.text = starship.appui
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
