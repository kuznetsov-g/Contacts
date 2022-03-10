//
//  PersonDetailsViewController.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 22.02.2022.
//
 
import UIKit

class PersonDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    var person : Person!
    var phone = "02"
    var email = "911@police.cop"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = person.fullName
        phoneLabel.text = "phone: " + person.phoneNumber
        emailLabel.text = "email: " + person.mail
        
        
    }

}
