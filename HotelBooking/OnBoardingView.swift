//
//  OnBoardingView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 21/6/2023.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    @State private var isHomeViewPresented = false

    var body: some View {
        ZStack {
            Image("OnBoarding")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                
            VStack(alignment: .center) {
                logo
                    .padding(.vertical, 50)
                    .padding(.horizontal, 155)
                    
                mainDescription
                    .padding(.bottom, 20)
                    .padding(.horizontal, 32)
                    
                subDescription
                    .padding(.bottom, 30)
                    
                getStartedButton
                    .padding(.horizontal, 24)
                    .padding(.bottom, 30)
            }
        }
//        .fullScreenCover(isPresented: $isHomeViewPresented) {
//            HomeView()
//        }
    }
    
    //MARK: - COMPONENTS
    fileprivate var logo : some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    fileprivate var mainDescription : some View {
        Text("Live the high life in the breathtaking world of Melbourne. This is where you can touch, feel, and imagine.")
            .font(.custom("Poppins-Regular", size: 24))
            .multilineTextAlignment(.center)
            .lineLimit(5)
            .foregroundColor(Color("PrimaryColor"))
    }
    
    fileprivate var subDescription : some View {
        Text("Discover our collection of your stay.")
            .font(.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color("PrimaryColor"))
    }
    
    fileprivate var getStartedButton : some View {
        Button(action: {
            isHomeViewPresented = true
        }) {
            Text("GET STARTED")
        }
        .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Regular", size: 16)))
    }
}


//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}

