//
//  OneCharacterViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 25/01/2021.
//

import UIKit

class OneCharacterViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var testLabel: UILabel!
    
    var character: Character!
    // http: //localhost:3000/image/character/explorator/UR-025.jpeg -> IMAGE

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = character.name
        testLabel.text = "\(character.life)"
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
