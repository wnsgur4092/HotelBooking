//
//  Collection.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 27/7/2023.
//

import Foundation
import SwiftUI
import ParseSwift
import Alamofire

struct Collection : ParseObject {
    var originalData: Data?
    
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom keys
    var collectionName: String?
    var collectionImage: ParseFile?
    var collectionDescription : String?

    // Parse keys
    static var className: String {
        return "Collection"
    }
}
