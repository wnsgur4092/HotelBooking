//
//  DateInputView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import SwiftUI

struct DateInputView: View {
    var body: some View {
        VStack{
            Text("Calendar")
            
            NavigationLink {
                BookingRoomView()
            } label: {
                Text("NEXT")
            }
            
        }
        .navigationBarHidden(true)
    }
}

struct DateInputView_Previews: PreviewProvider {
    static var previews: some View {
        DateInputView()
    }
}
