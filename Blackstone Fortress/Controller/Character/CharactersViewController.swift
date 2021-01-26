//
//  CharactersViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 22/01/2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class CharactersViewController: UITableViewController {

    @IBOutlet weak var CharacterTable: UITableView!

    var characters = [Character]()
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        getCharacters()
    }
    
    private func getCharacters() {
        AF.request("http://localhost:3000/character").responseJSON { response in
            do {
                let jsonData = response.data!
                let json = try JSON(data: jsonData)
                let res = json["data"]

                for (_, value) in res {
                    
                   // if let name = value["name"].string {
                   //      self.perso = Character(name: name)
                   //     self.characters.append(self.perso)
                   //   }
                    
                    self.character = Character(name: value["name"].string!, image: value["image"].string!,
                                           vaisseau_id: value["vaisseau_id"].string!,
                                           life: value["life"].int!, movement: value["movement"].int!,
                                           defense: value["defense"].string!,
                                           defense_exalte: value["defense_exalte"].string!,
                                           agility: value["agility"].string!,
                                           agility_exalte: value["agility_exalte"].string!,
                                           vitality: value["vitality"].string!,
                                           vitality_exalte: value["vitality_exalte"].string!,
                                           capacity: value["capacity"].array!,
                                           capacity_exalte: value["capacity_exalte"].array!,
                                           specialAttack: value["specialAttack"].string!,
                                           specialAttack_exalte: value["specialAttack_exalte"].string!,
                                           specialRole: value["specialRole"].array!,
                                           specialRole_exalte: value["specialRole_exalte"].array!,
                                           exalte: value["exalte"].array!,
                                           uniqueattack: value["uniqueattack"].array!,
                                           uniqueattack_exalte: value["uniqueattack_exalte"].array!)
                    
                    self.characters.append(self.character)
                }
                self.CharacterTable.reloadData()
            }
            catch {
                return
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  self.characters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath)

        // Configure the cell...
        let name =  self.characters[indexPath.row].name
        cell.textLabel?.text = name

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destination.
//         Pass the selected object to the new view controller.
        
        if let cell = sender as? UITableViewCell {
            let i = self.tableView.indexPath(for: cell)!.row
            if segue.identifier == "segueToCharacter" {
                let tabCtrl = segue.destination as! TabCharacterViewController
                tabCtrl.name = characters[i].name
                let oneCharacterVC = tabCtrl.viewControllers![0] as! OneCharacterViewController
                oneCharacterVC.character = characters[i]
                let exalteVC = tabCtrl.viewControllers![1] as! ExalteViewController
                exalteVC.character = characters[i]
            }
        }
    }

}