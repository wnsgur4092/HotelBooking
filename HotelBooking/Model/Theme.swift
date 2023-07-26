//
//  Theme.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import Foundation
import SwiftUI
import ParseSwift

struct Theme: ParseObject {
    var originalData: Data?
    
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom keys
    var themeName: String?
    var themeImage: ParseFile?

    // Parse keys
    static var className: String {
        return "Theme"
    }
}

class HomeViewModel : ObservableObject {
    @Published var themes = [Theme]()
    
    func loadThemes() {
        let query = Theme.query()
        
        query.find { result in
            switch result {
            case .success(let themes) :
                DispatchQueue.main.async {
                    self.themes = themes
                    print("fetching themes: \(themes.count)")
                }
            case .failure(let error) :
                print("Error fetching themes: \(error)")
            }
        }
    }
}
