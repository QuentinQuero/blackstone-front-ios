//
//  CharacterViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 20/01/2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCharacters()
    }
    
    private func getCharacters() {
        AF.request("http://localhost:3000/character").responseJSON { response in
            do {
                let jsonData = response.data!
                let json = try JSON(data: jsonData)
            
                
                let name = json["data"][0]["name"]
                print(name)
            
            } catch {
                return
            }
        }
    }

}
