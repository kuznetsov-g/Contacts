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
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare is here")
         let personDetailNC = segue.destination as! PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
            personDetailNC.person = persons[indexPath.row]
    }
     
}
