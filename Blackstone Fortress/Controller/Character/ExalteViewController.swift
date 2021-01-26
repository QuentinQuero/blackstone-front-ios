//
//  ExalteViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import UIKit

class ExalteViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var character: Character!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = "\(character.exalte)"
//        if let isExalte = character.exalte[0]["possible"] {
//            print(character.exalte[0]["possible"])
//            
//        }
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
