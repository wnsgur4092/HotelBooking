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
            Header(title: "Click below\nsadsadas", subtitle: "Click to see more in details")
            
            ScrollView(.vertical, showsIndicators: true) {
                RoomCard()
                RoomCard()
                RoomCard()
                RoomCard()
            }
            
        }
        .ignoresSafeArea(.container, edges: .top)
        .navigationBarHidden(true)
    }
}

struct BookingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BookingRoomView()
    }
}
