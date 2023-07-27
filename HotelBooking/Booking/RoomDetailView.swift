//
//  RoomDetailView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI

struct RoomDetailView: View {
    
    @StateObject var totalView = VideoPlayerViewModel()
    
    @State private var isTotalViewExpanded: Bool = false
    
    @State var expand = false
    
    @Namespace var animation
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            VStack{
                Header(title: "Add enhancements\nas you desire", subtitle: "Click to see more in details")
                
                ScrollView {
                    VStack(spacing: 24){
                        Text("Celestial Classic*")
                            .font(regularFont(size: 32))
                        
                        Text("You get the bed all to yourself in our twin room. Same size as our double room, the twin room offers two comfortable single beds and plenty of space to relax.")
                            .font(regularFont(size: 16))
                            .multilineTextAlignment(.center)
                        
                        roomDetails
                        
                        roomAmenities
                        
                        optionSelections
                        
                        Spacer()
                            .frame(height: 80)
                        
                    }
                    .padding(.horizontal, 24)
                    
                    
                }
            }
            .ignoresSafeArea(.container, edges: .top)
            
            Miniplayer(animation: animation, expand: $expand)
            
//                .navigationBarHidden(true)
            
        }
        
        
    }
    
    //MARK: - COMPONENTS
    fileprivate var roomDetails : some View {
        VStack(spacing: 24){
            Text("Room Details".uppercased())
                .font(regularFont(size: 16))
            
            HStack(spacing: 32){
                HStack(spacing: 11){
                    Ellipse()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color("AccentColor"))
                    
                    
                    Text("2 People")
                }
                
                HStack(spacing: 11){
                    Ellipse()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color("AccentColor"))
                    
                    Text("15m/2 / 161 ft2")
                }
                
            }
            
            Image("room")
        }
    }
    
    fileprivate var roomAmenities : some View {
        VStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth:.infinity, maxHeight: 1)
                .background(.black)
            
            Text("ROOM AMENITIES")
                .font(regularFont(size: 16))
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 326, height: 1)
                .background(.black)
        }
    }
    
    fileprivate var optionSelections : some View {
        VStack{
            Text("Enhance Your Stay")
                .font(regularFont(size: 32))
            
            VStack(alignment: .leading){
                Image("room")
                
                Text("Breakfast")
                    .font(regularFont(size: 24))
                Text("Per Person Per Night\nStart the day with a delicious breakfast")
                    .font(regularFont(size: 16))
                
                HStack{
                    Text("$80")
                        .font(regularFont(size: 48))
                    Text("per person")
                        .font(regularFont(size: 16))
                }
                
                
            }
        }
    }
    
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView()
    }
}
