//
//  DateInputView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import SwiftUI

struct DateInputView: View {
    var body: some View {
        VStack(spacing: 20){
            Header(title: "Pick you up the best dates", subtitle: "Select the date")
                
            

                
                BookingDateView(calendar: Calendar.current, monthsLayout: .vertical)
    
                NavigationLink {
//                    TestView(roomViewModel: RoomViewModel())
                    
                    BookingRoomView(roomViewModel: RoomViewModel())
                } label: {
                    Text("NEXT")
                }
                
            
            

        }
        .ignoresSafeArea(.container, edges: .top)
        .navigationBarHidden(true)
    }
}

struct DateInputView_Previews: PreviewProvider {
    static var previews: some View {
        DateInputView()
    }
}
