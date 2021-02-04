//
//  OneCharacterViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 25/01/2021.
//

import UIKit
import Kingfisher

class OneCharacterViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var moveLabel: UILabel!

    @IBOutlet weak var defenseImage: UIImageView!
    @IBOutlet weak var agilityImage: UIImageView!
    @IBOutlet weak var vitalityImage: UIImageView!
    
    var character: Classic!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        getImage()
        lifeLabel.text = "Vie : \(character.life)"
        moveLabel.text = "Mouvement : \(character.movement)"
        getStats()
//        getSpecialRule()
    }
    
//    private func getSpecialRule() {
//        let number = self.character.specialRole.count
//        var i = 0
//
//        while i < number {
//            print(self.character.specialRole[i]["name"])
////            self.specialRuleLabel.text! += (self.character.specialRole[i] as AnyObject).string!
//            i += 1
//            print(i)
//        }
//    }
    
    private func getImage() {
        let url = URL(string: "http://localhost:3000/\(character.image)")
        imageView.kf.setImage(with: url)
        imageView.makeRounded()
    }
    
    private func getStats() {
        let def = character.whichSquare(variable: character.defense)
        defenseImage.image = UIImage(named: def)
        let agi = character.whichSquare(variable: character.agility)
        agilityImage.image = UIImage(named: agi)
        let vit = character.whichSquare(variable: character.vitality)
        vitalityImage.image = UIImage(named: vit)
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

extension UIImageView {

    func makeRounded() {

        self.layer.borderWidth = 3
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
