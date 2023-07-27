//
//  ThemeCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import SwiftUI

struct ThemeCard: View {
    var theme: Theme
    @ObservedObject private var imageLoader = ImageLoader()
    
    var body: some View {
        VStack{
            Text(theme.themeName ?? "")
                .font(.custom("Poppins-Medium", size: 24))
                .foregroundColor(Color("PrimaryColor"))
                .padding(.bottom, 24)
                .padding(.horizontal, 27)
            
            Group {
                if let image = imageLoader.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                } else {
                    ProgressView()
                        .frame(width: 280, height: 200) // Set a specific frame size
                }
            }
            .padding(.bottom, 17)
            
            NavigationLink {
                DateInputView()
            } label: {
                Text("Take me here".uppercased())
            }
            .buttonStyle(PrimaryButtonStyle(font: boldFont(size: 16)))
            .padding(.horizontal, 18.5)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 12.5)
        .padding(.bottom, 19.5)
        .background(Color.white)
        .cornerRadius(8.8)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .onAppear {
            if let imageUrl = theme.themeImage?.url {
                imageLoader.load(url: imageUrl)
            }
        }
    }
}


//struct ThemeCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ThemeCard(themeName: "Theme1", themeImage: URL(string: "https://example.com/image.jpg")!)
//            .fixedSize()
//    }
//}
