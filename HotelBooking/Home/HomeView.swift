//
//  HomeView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    var themes: [Theme] = themeLists
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                title
                    .padding(.bottom, 16)
                
                
                themeSlider
                
            }
            .ignoresSafeArea(.container, edges: .top)
        }
        
    }
    
    //MARK: - COMPONENTS
    fileprivate var title : some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity)
                .ignoresSafeArea()
                .background(Color("PrimaryColor"))
                .ignoresSafeArea()
            
            Text("Are you looking for a perfect date night?\nExellent.")
                .font(.custom("Poppins-Regular", size: 28))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
                .padding(.top, 90.25)
                .padding(.bottom, 28.25)
        }
        
    }
    
    fileprivate var themeSlider : some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                
                ForEach(themes) { theme in
                    ThemeCard(themeName: theme.themeName, themeImage: theme.themeImageNmae)
                }
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
        }
        
    }
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
