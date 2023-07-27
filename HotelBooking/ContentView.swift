//
//  ContentView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selection : Int = 0
    
    var body: some View {
        TabView {
            HomeView(homeViewModel: HomeViewModel())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
                .environmentObject(BookingViewModel())
            
            AccomodationView()
                .tabItem {
                    Label("Accomodation", systemImage: "bed.double")
                }
                .tag(1)
            
            EatDrinkView()
                .tabItem {
                    Label("Eat & Drink", systemImage: "fork.knife")
                }
                .tag(2)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
