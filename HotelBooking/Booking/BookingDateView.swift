//
//  BookingDateView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct BookingDateView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var bookingViewModel : BookingViewModel
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 10){
            checkInButton
            
            checkOutButton
                .padding(.bottom, 25)
            
            confirmButton
        }
        .padding(.horizontal, 24)
    }
    
    //MARK: - COMPONENTS
    //CHECK IN BUTTON
    fileprivate var checkInButton : some View {
        Button {

        } label: {
            HStack{
                Text("Check-in".uppercased())
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
        .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Medium", size: 16)))
    }
    
    
    //CHECK OUT BUTTON
    fileprivate var checkOutButton : some View {
        Button {
            print("Check-out button Tapped")
        } label: {
            HStack{
                Text("Check-out".uppercased())
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
        .buttonStyle(PrimaryButtonStyle(font: .custom("Poppins-Medium", size: 16)))
    }
    
    //Confirm Button
    fileprivate var confirmButton : some View {
        Button {
            print("Tapped Update Guests & Room ")
        } label: {
            Text("Update Guests & Rooms")
        }
        .buttonStyle(AccentButtonStyle(font: .custom("Poppins-Bold", size: 16)))
        .padding(.horizontal, 15)
    }
}

//MARK: - PREVIEW
struct BookingDateView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDateView()
            .environmentObject(BookingViewModel())
    }
}
