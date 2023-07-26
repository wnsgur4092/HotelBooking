//
//  RoomCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct RoomCard: View {
    //MARK: - PROPERTIES
    var room : Room
    @ObservedObject private var imageLoader = ImageLoader()
    
    //MARK: - BODY
    var body: some View {
        Group{
            if let image = imageLoader.image {
                VStack{
                    
                    image
                        .resizable()
                        .frame(maxWidth:.infinity)
                    
                    VStack(alignment: .leading, spacing: 16){
                        Text("\(room.roomName ?? "")\n1 King Bed & River Views")
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
                            .background(
                                Image("OnBoarding")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            )
                            .clipped()
                        
                        
                        NavigationLink {
                            RoomDetailView()
                        } label: {
                            Text("Book Now".uppercased())
                                .foregroundColor(Color("AccentColor"))
                                .font(.custom("Poppins-Medium", size: 20))
                                .padding(16)
                                .frame(maxWidth: .infinity)
                                .border(Color.black, width: 1)
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                }
            } else {
                ProgressView()
                    .frame(width: 280, height: 292) // Set a specific frame size
                    .background(Color.white)
                    .cornerRadius(8.8)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            }
        }
        .onAppear {
            if let imageUrl = room.roomImage?.url {
                imageLoader.load(url: imageUrl)
            }
        }

    }
    
}
