//
//  PrimaryButtonStyle.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    // MARK: - PROPERTIES
    let borderColor: Color = Color("PrimaryColor")
    let textColor: Color = Color("PrimaryColor")
    let font: Font = .custom("Poppins-Bold", size: 16)
    
    // MARK: - FUNCTION
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
                .foregroundColor(textColor)
                .font(font)
        }
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(borderColor, lineWidth: 2)
        )
    }
}

