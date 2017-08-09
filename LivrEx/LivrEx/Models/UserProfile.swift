//
//  UserProfile.swift
//  LivrEx
//
//  Created by Maria Angelica Dadalt on 09/08/17.
//  Copyright © 2017 Maria Angelica Dadalt. All rights reserved.
//

import Foundation

class UserProfile {
    
    let username: String
    let password: String
    let email: String
    let firstName: String
    let lastName: String
    let zipCode: String
    let street: String
    let buildingNumber: String
    let insideBuildingNumber: String
    let city: String
    let state: String
    let country: String
    var coinsAvailable: Int
    
    init(username: String, password: String, email: String, firstName: String, lastName: String, zipCode: String, street: String, buildingNumber: String, insideBuildingNumber: String, city: String, state: String, country: String, coinsAvailable: Int) {
        self.username = username
        self.password = password
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.zipCode = zipCode
        self.street = street
        self.buildingNumber = buildingNumber
        self.insideBuildingNumber = insideBuildingNumber
        self.city = city
        self.state = state
        self.country = country
        self.coinsAvailable = coinsAvailable
    }
    
    lazy var fullName = "\(firstName) \(lastName)"
  
}










