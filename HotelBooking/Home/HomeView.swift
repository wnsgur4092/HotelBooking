//
//  HomeView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI
import URLImage

struct HomeView: View {
    //MARK: - PROPERTIES
    @ObservedObject var homeViewModel : HomeViewModel
    @State var showBookingDateView = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                Header(title: "Let’s pick you up the best rooms", subtitle: "Couple and a place to be inspired. We offer a bespoke.")
                    .padding(.bottom, 20)
                
                themeSlider
                    .onAppear(perform: homeViewModel.loadThemes)
                
                Text("Hello World")
                
                    .navigationBarHidden(true)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
        
    }
    
    //MARK: - COMPONENTS
    fileprivate var themeSlider: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 28) {
                ForEach(homeViewModel.themes, id: \.objectId) { theme in
                    ThemeCard(themeName: theme.themeName ?? "", themeImage: theme.themeImage?.url?.absoluteString ?? "")
                }
            }
            .padding(.horizontal, 24)
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
