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
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        
                        ForEach(themes) { theme in
                            ThemeCard(themeName: theme.themeName, themeImage: theme.themeImageNmae)
                        }

                    }
                    .padding(.bottom, 40)
                }
            }
        }
    }
    //MARK: - COMPONENTS
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
