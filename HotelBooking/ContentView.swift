//
//  ContentView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            HomeView(homeViewModel: HomeViewModel())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .environmentObject(BookingViewModel())
            
            AccomodationView()
                .tabItem {
                    Label("Accomodation", systemImage: "bed.double")
                }
            
            EatDrinkView()
                .tabItem {
                    Label("Eat & Drink", systemImage: "fork.knife")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
