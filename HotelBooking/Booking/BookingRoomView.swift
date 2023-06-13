//
//  BookingRoomView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct BookingRoomView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            RoomCard()
            RoomCard()
            RoomCard()
            RoomCard()
        }
    }
}

struct BookingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BookingRoomView()
    }
}
