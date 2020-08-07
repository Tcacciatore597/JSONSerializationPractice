//
//  ViewController.swift
//  CodablePracticeiOS18
//
//  Created by Spencer Curtis on 8/6/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            guard let personDictionary = try JSONSerialization.jsonObject(with: basicPerson, options: []) as? [String: Any] else { return }
            let person = Person(dictionary: personDictionary)
            let personJSON = try JSONSerialization.data(withJSONObject: person?.dictionaryRepresentation, options: [])
            
        } catch {
            NSLog("Error deserializing JSON: \(error)")
        }
        
        
    }


}

