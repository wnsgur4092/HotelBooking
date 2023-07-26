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
                VStack{
                    Header(title: "Let’s pick you up the best rooms", subtitle: "Couple and a place to be inspired. We offer a bespoke.")
                        .padding(.bottom, 20)
                    
                    
                    themeSlider
                        .onAppear(perform: homeViewModel.loadThemes)
                    
                    collectionSlider
                        .onAppear(perform: homeViewModel.loadCollections)
                    
                    
                    
                    
                    
                }
                
                .navigationBarHidden(true)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
        
        
    }
    
    //MARK: - COMPONENTS
    fileprivate var themeSlider: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(homeViewModel.themes, id: \.objectId) { theme in
                    ThemeCard(theme: theme)
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 20)
        }
    }
    
    fileprivate var collectionSlider : some View {
        VStack{
            HStack{
                Text("Most popular\nCelestial Collections")
                    .font(mediumFont(size: 24))
                
                Spacer()
            }
            .padding(.horizontal, 24)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(homeViewModel.collections, id: \.objectId) { collection in
                        CollectionCard(collection: collection)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 20)
            }
        }
        //        .frame(maxWidth: .infinity)
        
        
    }
    
}


//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(homeViewModel: HomeViewModel())
    }
}
