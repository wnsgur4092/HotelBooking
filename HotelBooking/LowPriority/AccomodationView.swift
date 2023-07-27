//
//  AccomodationView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI

struct AccomodationView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                BookingRoomView(roomViewModel: RoomViewModel())
            } label: {
                Text("CHECK")
            }
        }
  

    }
}

struct AccomodationView_Previews: PreviewProvider {
    static var previews: some View {
        AccomodationView()
    }
}
