//
//  Person.swift
//  CodablePracticeiOS18
//
//  Created by Spencer Curtis on 8/6/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let streetName: String
    let country: String
    let email: String
    
    init?(dictionary: [String: Any]) {
        guard let email  = dictionary["email"] as? String,
            let nameDictionary = dictionary["name"] as? [String: Any],
            let firstName = nameDictionary["first"] as? String,
            let lastName = nameDictionary["last"] as? String,
            let locationDictionary = dictionary["location"] as? [String: Any],
            let country = locationDictionary["country"] as? String,
            let streetDictionary = locationDictionary["street"] as? [String: Any],
            let streetName = streetDictionary["name"] as? String,
            let dobDictionary = dictionary["dob"] as? [String: Any],
            let age = dobDictionary["age"] as? Int else { return nil }
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.country = country
        self.streetName = streetName
        self.age = age
    }
    
    var dictionaryRepresentation: [String: Any] {
        var dictionary = [String: Any]()
        dictionary["email"] = email
        dictionary["dob"] = ["age": age]
        dictionary["location"] = ["street": ["name": streetName], "country": country]
        dictionary["name"] = ["first": firstName, "last": lastName]
        
        return dictionary
    }
}
