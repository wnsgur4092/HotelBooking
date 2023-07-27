//
//  TestView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 27/7/2023.
//

import SwiftUI

struct TestView: View {
    @ObservedObject var roomViewModel : RoomViewModel
    
    var body: some View {
        VStack{
            ForEach(roomViewModel.rooms, id: \.objectId) {
                room in
                RoomCard(room: room)
            }
        }
        .onAppear {
            roomViewModel.loadThemes()
        }
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(roomViewModel: RoomViewModel())
    }
}
