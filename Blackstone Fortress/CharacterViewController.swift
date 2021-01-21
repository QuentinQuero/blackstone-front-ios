//
//  CharacterViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 20/01/2021.
//

import UIKit
import Alamofire

class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCharacters()
    }
    
    private func getCharacters() {
        AF.request("http://localhost:3000/character").responseJSON { response in
            if let res = response.value as? Dictionary<String,AnyObject>{
                print(res)
//                if let name = res["name"] as? String{
//                    print(name)
//                }
            }
        }
    }

}
