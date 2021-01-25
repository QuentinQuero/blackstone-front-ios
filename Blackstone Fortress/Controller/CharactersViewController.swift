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
    var perso: Character!
    
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
                    if let name = value["name"].string {
                        self.perso = Character(name: name)
                        self.characters.append(self.perso)
                    }
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
        
//        if segue.identifier == "segueToCharacter" {
//            let oneCharacterVC = segue.destination as! OneCharacterViewController
//            oneCharacterVC.perso = self.perso
//        }
        
        if let cell = sender as? UITableViewCell {
            let i = self.tableView.indexPath(for: cell)!.row
            if segue.identifier == "segueToCharacter" {
                let oneCharacterVC = segue.destination as! OneCharacterViewController
                oneCharacterVC.perso = characters[i]
            }
        }
    }

}
