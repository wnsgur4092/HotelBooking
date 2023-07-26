//
//  BookingRoomView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct BookingRoomView: View {
    @ObservedObject var roomViewModel : RoomViewModel
    
    var body: some View {
        VStack{
            Header(title: "Click below\nsadsadas", subtitle: "Click to see more in details")
            
           
            ScrollView(.vertical, showsIndicators: true) {
                VStack{
                    ForEach(roomViewModel.rooms, id: \.objectId) {
                        room in
                        RoomCard(room: room)
                        
                    }
                }
            }
            
        }
        .ignoresSafeArea(.container, edges: .top)
        .navigationBarHidden(true)
    }
}

struct BookingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BookingRoomView(roomViewModel: RoomViewModel())
    }
}
