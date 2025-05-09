//
//  Data.swift
//  listeleme
//
//  Created by on 7.05.2025.
//

import Foundation

class Data: Identifiable {
    
    var id: Int = 0
    var title: String = ""
    var picture: String = ""
    
    init() {
        
    }
    
    init(id: Int, title: String, picture: String) {
        self.id = id
        self.title = title
        self.picture = picture

    }
}
