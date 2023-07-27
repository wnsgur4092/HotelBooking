//
//  Room.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 26/7/2023.
//


import Foundation
import SwiftUI
import ParseSwift

struct Room: ParseObject {
    var originalData: Data?
    
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom keys
    var roomName: String?
    var roomSubName : String?
    var roomDescription : String?
    var roomImage : ParseFile?
    var roomTheme: Theme?
    var roomSizeInMeter : Int?
    var roomSizeInFeet : Int?
    var roomPrice : Int?

    // Parse keys
    static var className: String {
        return "Room"
    }
}
