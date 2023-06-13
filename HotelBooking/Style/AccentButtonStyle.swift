//
//  AccentButtonStyle.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import Foundation
import SwiftUI

struct AccentButtonStyle: ButtonStyle {
    // MARK: - PROPERTIES
    let borderColor: Color = Color("AccentColor")
    let textColor: Color = Color.white
    let font: Font
    
    // MARK: - FUNCTION
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
                .foregroundColor(textColor)
                .font(font)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(borderColor)
                .cornerRadius(8)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}
