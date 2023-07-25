//
//  ThemeCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import SwiftUI

struct ThemeCard: View {
    var themeName : String
    var themeImage : String
    @Binding var showBookingDateView: Bool

    var body: some View {
        VStack{
            Text(themeName)
                .font(.custom("Poppins-Medium", size: 24))
                .foregroundColor(Color("PrimaryColor"))
                .padding(.bottom, 24)
                .padding(.horizontal, 27)
            
            Image(themeImage)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .padding(.bottom, 17)
            
            Button(action: {
                showBookingDateView = true
            }) {
                Text("Take me here".uppercased())
            }
            .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Bold", size: 16)))
            .padding(.horizontal, 18.5)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 12.5)
        .padding(.bottom, 19.5)
        .background(Color.white)
        .cornerRadius(8.8)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct ThemeCard_Previews: PreviewProvider {
    static var previews: some View {
        ThemeCard(themeName: "Theme1", themeImage: "theme1", showBookingDateView: .constant(false))
            .fixedSize()
    }
}
