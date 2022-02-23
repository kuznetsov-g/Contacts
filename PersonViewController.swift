//
//  PersonViewController.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 20.02.2022.
//

import UIKit

class PersonViewController: UITableViewController {
    var persons : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personalDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
            personalDetailsVC.person = persons[indexPath.row]
        print("take prepare")
            }*/
        
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare is here")
         let personDetailNC = segue.destination as! PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
            personDetailNC.person = persons[indexPath.row]
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

    

    
}
