//
//  Book.swift
//  Reading List
//
//  Created by Kendra McVay on 2/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Book: Equatable, Codable {
    var title: String
    var reasonToRead: String
    var hasBeenRead: Bool
}

let someBook = Book(title: "", reasonToRead: "", hasBeenRead: false)
