//
//  ChallengesViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class ChallengesViewController: UITableViewController {

    @IBOutlet weak var ChallengeTable: UITableView!
    
    var challenges = [Challenge]()
    var challenge: Challenge!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        getChallenges()
    }

    private func getChallenges() {
        AF.request("http://localhost:3000/challenges").responseJSON { response in
            do {
                let jsonData = response.data!
                let json = try JSON(data: jsonData)
                let res = json["data"]
                
                for (_, value) in res {
                    
                    self.challenge = Challenge(title: value["title"].string!, description: value["description"].string!, situation: value["situation"].string!)

                    self.challenges.append(self.challenge)
                }
                self.ChallengeTable.reloadData()
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
        return self.challenges.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChallengeCell", for: indexPath)

        // Configure the cell...
        let title =  self.challenges[indexPath.row].title
        cell.textLabel?.text = title

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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let cell = sender as? UITableViewCell {
            let i = self.tableView.indexPath(for: cell)!.row
            if segue.identifier == "segueToChallenge" {
                let challengeVC = segue.destination as! OneChallengeViewController
                challengeVC.challenge = challenges[i]
            }
        }
    }
}
