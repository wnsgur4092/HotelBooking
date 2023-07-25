//
//  RoomCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct RoomCard: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        
        VStack{
            Image("room")
                .resizable()
                .frame(maxWidth:.infinity)
            
            VStack(alignment: .leading, spacing: 16){
                Text("Celestial Classic *\n1 King Bed & River Views")
                    .font(.custom("Poppins-Regular", size: 24))
                
                Text("psum dolor sit amet consectetur. Odio at iaculis nec justo mus aliquam at. Nec.ipsum dolor sit am. psum dolor sit amet consectetur. Odio at iaculis nec justo mus aliquam at. Nec.ipsum dolor sit am.psum dolor sit amet consectetur. ")
                    .font(.custom("Poppins-Regular", size: 12))
                
                Text("View Room Details & Enchancements")
                    .font(.custom("Poppins-Regular", size: 12))
                    .underline()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            
            
            HStack(spacing: 0) {
                Text("$1,230 AUD")
                    .font(.custom("Poppins-Medium", size: 20))
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .border(Color.black, width: 1)
                
                NavigationLink {
                    RoomDetailView()
                } label: {
                    Text("Book Now".uppercased())
                        .font(.custom("Poppins-Medium", size: 20))
                        .padding(16)
                        .frame(maxWidth: .infinity)
                        .border(Color.black, width: 1)
                }
                
            }
            .frame(maxWidth: .infinity)
        }
//        .overlay(RoundedCorner(radius: 16, corners: [.topLeft, .topRight]).stroke(lineWidth: 1))
        .padding(24)
    }
    
}

//MARK: - EXTENSION
//extension View {
//    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//        clipShape(RoundedCorner(radius: radius, corners: corners) )
//    }
//}

//MARK: - PREVIEW
struct RoomCard_Previews: PreviewProvider {
    static var previews: some View {
        RoomCard()
    }
}
