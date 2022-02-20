//
//  DataManager.swift
//  Contacts
//
//  Created by Георгий Кузнецов on 20.02.2022.
//

import Foundation


class DataManager {
    
    let names = [
                 "Jacob",
                 "Emily",
                 "Michael",
                 "Emma",
                 "Joshua",
                 "Madison",
                 "Matthew",
                 "Olivia",
                 "Ethan",
                 "Hannah"
                ]
     
     let surnames = ["Smith",
                     "Johnson",
                     "Williams",
                     "Jones",
                     "Brown",
                     "Davis",
                     "Miller",
                     "Wilson",
                     "Moore",
                     "Taylor",
                     "Anderson"
                     ]
    
    var phoneNumber : String {
                              "+1-800-\(Int.random(in: 1000000...99999999))"
                             }
    
    var email : String {
        let randomNum = Int.random(in: 5...10)
        let letters = "abcdefghijklmnopqrstuvwxyz0123456789"
        let emailBody = String((0..<randomNum).map{ _ in letters.randomElement()! })
        return (emailBody+"@mail.ru")
    }
}
