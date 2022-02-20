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
    
    
}
    
    
    
    



 
