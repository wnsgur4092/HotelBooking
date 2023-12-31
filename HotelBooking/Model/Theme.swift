//
//  Theme.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import Foundation
import SwiftUI
import ParseSwift
import Alamofire

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
