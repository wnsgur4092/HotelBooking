//
//  HomeView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                mainImage
                
                //MAIN
                VStack{
                    mainText
                    
                    //BUTTON
                    bookingButton
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 20)
            }
        }
    }
    //MARK: - COMPONENTS
    fileprivate var mainImage : some View {
        Image("map")
    }
    
    fileprivate var mainText : some View {
        VStack(alignment: .center, spacing: 20){
            Text("Live the high lif in the breadthtaking world of Melbourne. This is where you can touch, feel, and image")
                .multilineTextAlignment(.center)
                .font(.custom("Poppins-Regular", size: 24))
            
            Text("Discover our collection of your stay.")
                .font(.custom("Poppins-Regular", size: 16))
                .padding(.bottom, 46)
        }
    }
    
    fileprivate var bookingButton : some View {
        NavigationLink {
            BookingDateView()
        } label: {
            Text("Book your stay".uppercased())
        }
        .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Bold", size: 16)))
    }
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
