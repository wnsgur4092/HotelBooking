//
//  BookingRoomView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct BookingRoomView: View {
    var body: some View {
        VStack{
            title
            
            ScrollView(.vertical, showsIndicators: true) {
                RoomCard()
                RoomCard()
                RoomCard()
                RoomCard()
            }
        }
    }
    
    fileprivate var title : some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: 190)
                .ignoresSafeArea()
                .background(Color("PrimaryColor"))
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("Click below sadsadas")
                    .font(.custom("Poppins-Regular", size: 28))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
                Text("Click to see more in details")
                    .foregroundColor(.white)
            }

        }
        
    }
}

struct BookingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BookingRoomView()
    }
}
