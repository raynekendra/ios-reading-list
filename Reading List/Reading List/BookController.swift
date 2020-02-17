//
//  BookController.swift
//  Reading List
//
//  Created by Kendra McVay on 2/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    var books: [Book] = []
    private var readlingListURL: URL? {
        let fileManager = FileManager.default //
        guard let documents = FileManager.urls(for: .documentsDirectory, in: .userDomainMask).first else { return nil }
        
        
        return documents.appendingPathComponent("ReadingList.plist")
    }
    
    init() {
        saveFromPersistentStore()
    }
    
    func saveToPersistentStore() {
       guard let url = persistentFileURL else { return }
            
            do {
                let encoder = PropertyListEncoder()
                let data = try encoder.encode(books)
                try data.write(to: url)
            } catch {
                print("Error saving stars data: \(error).")
            }
            
        }
}
