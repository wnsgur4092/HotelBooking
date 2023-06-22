//
//  ThemeCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import SwiftUI

struct ThemeCard: View {
    //MARK: - PROPERTIES
    var themeName : String = "Perfect Date Night"
    var themeImage : String = "theme1"
    
    //MARK: - BODY
    var body: some View {
        VStack{
            Text(themeName)
                .font(.custom("Poppins-Medium", size: 24))
                .padding(.bottom, 24)
                .padding(.horizontal, 27)
            
            Image(themeImage)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.bottom, 17)
                
            
            Button {
                print("Tapped take me here")
            } label: {
                Text("Take me here".uppercased())
            }
            .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Bold", size: 16)))
            .padding(.horizontal, 18.5)
            
            
        }
        .frame(maxWidth: .infinity)
    }
}

struct ThemeCard_Previews: PreviewProvider {
    static var previews: some View {
        ThemeCard()
    }
}
