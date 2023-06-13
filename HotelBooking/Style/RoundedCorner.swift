//
//  RoundedCorner.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import Foundation
import SwiftUI
import UIKit

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
