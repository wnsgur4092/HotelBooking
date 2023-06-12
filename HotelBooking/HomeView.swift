//
//  HomeView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{

            //MAIN
            VStack(alignment: .center, spacing: 20){
                Text("Live the high lif in the breadthtaking world of Melbourne. This is where you can touch, feel, and image")
                    .multilineTextAlignment(.center)
                    .font(.custom("Poppins-Regular", size: 24))
                
                Text("Discover our collection of your stay.")
                    .font(.custom("Poppins-Regular", size: 16))
                    .padding(.bottom, 46)
                
                //BUTTON
                Button {
                    print("Tapped Booked")
                } label: {
                    Text("Book your stay".uppercased())
                }
                .buttonStyle(PrimaryButtonStyle())
 
            }
            .padding(.horizontal, 24)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
