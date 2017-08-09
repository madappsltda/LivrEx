//
//  Book.swift
//  LivrEx
//
//  Created by Maria Angelica Dadalt on 09/08/17.
//  Copyright © 2017 Maria Angelica Dadalt. All rights reserved.
//

import Foundation
import UIKit

class Book {
    let title: String
    let author: String
    let bookPhotos: UIImage
    let condition: Condition
    let bindingType: BindingType
    let bookProvinence: BookProvinence
    
    init(title: String, author: String, bookPhotos: UIImage, condition: Condition, bindingType: BindingType, bookProvinence: BookProvinence) {
        self.title = title
        self.author = author
        self.bookPhotos = bookPhotos
        self.bindingType = bindingType
        self.condition = condition
        self.bookProvinence = bookProvinence
    }
    
    
    var amountOfCoinsNeeded: Int {
        
        var totalCoinsNeed: Int = 0
        
        if condition == .likeNew {
            totalCoinsNeed += 40
        } else if condition == .veryGood {
            totalCoinsNeed += 30
        } else if condition == .good {
            totalCoinsNeed += 20
        } else if condition == .regular {
            totalCoinsNeed += 10
        }
        
        if bindingType == .hardcover {
            totalCoinsNeed += 30
        } else if bindingType == .paperback {
            totalCoinsNeed += 10
        }
        
        if bookProvinence == .domestic {
            totalCoinsNeed += 10
        } else if bookProvinence == .foreign {
            totalCoinsNeed += 30
        }
      
        return totalCoinsNeed
    }
}


enum BindingType {
    case hardcover
    case paperback
}

enum Condition {
    case likeNew
    case veryGood
    case good
    case regular
}

enum BookProvinence {
    case domestic
    case foreign
}
