//
//  HomeView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    @StateObject var homeViewModel : HomeViewModel
    var themes: [Theme] = themeLists
    @State var showBookingDateView = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                Header(title: "Let’s pick you up the best rooms", subtitle: "Couple and a place to be inspired. We offer a bespoke.")
                    .padding(.bottom, 20)
                themeSlider
                
                    .navigationBarHidden(true)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
    
    //MARK: - COMPONENTS
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
        HomeView(homeViewModel: HomeViewModel())
    }
}
