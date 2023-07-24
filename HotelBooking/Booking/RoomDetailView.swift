//
//  RoomDetailView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct RoomDetailView: View {
    var body: some View {
        ScrollView {
            Text("Celestial Classic")
            
            Text("You get the bed all to yourself in our twin room. Same size as our double room, the twin room offers two comfortable single beds and plenty of space to relax.")
            
            Text("Decorated with a colourful yet subtle décor, the twin room is perfectly fit for two people who travel together but prefer not to share the covers.")
            
            Text("Room Details")
            
            HStack{
                Text("People")
                
                Text("15m/2 / 161 ft2")
            }
        }
    }
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView()
    }
}
