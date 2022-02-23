//
//  ContactsTabBar.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 23.02.2022.
//

import UIKit

class ContactsTabBar: UITabBarController {
    let persons = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setContactsVC()
        
    }
    private func setContactsVC() {
        
        let personVC = viewControllers?.first as! PersonViewController
        let detailsVC = viewControllers?.last as! DetailsViewController
        
        personVC.persons = persons
        detailsVC.persons = persons
    }
    
    

}
