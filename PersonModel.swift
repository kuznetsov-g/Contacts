//
//  PersonModel.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 20.02.2022.
//

import Foundation

struct Person: Hashable {
  let name : String
  let surname: String
  let mail : String
  let phoneNumber : String
  var fullName : String { "\(name) \(surname)"}
    
   static func getContacts() -> [Person] {
        var persons = Set<Person>()
        
        while persons.count < 10 {
            let data = DataManager()
            let person = Person(name: data.names.randomElement() ?? "Иван",
                                surname: data.surnames.randomElement() ?? "Акулов",
                                mail: data.email,
                                phoneNumber: data.phoneNumber
                               )
            persons.insert(person)
            
        }
       return Array(persons)
    }
}
    
    
    
    



 
