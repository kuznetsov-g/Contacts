//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 23.02.2022.
//

import UIKit

class DetailsViewController: UITableViewController {
    
    var persons : [Person]!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
        } else {
            content.text = person.mail
        }
        cell.contentConfiguration = content
        return cell
    }

}
