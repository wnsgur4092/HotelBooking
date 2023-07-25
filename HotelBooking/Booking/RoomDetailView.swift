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
            
            TabView {
                Text("Hello World")
            }
            
            Miniplayer(animation: animation, expand: $expand)
            
                .navigationBarHidden(true)
            
        }
    }
    
    //MARK: - COMPONENTS
    fileprivate var roomDetails : some View {
        VStack{
            Text("Room Details")
            
            HStack{
                Text("People")
                
                Text("15m/2 / 161 ft2")
            }
            
            Image("room")
        }
    }
    
    fileprivate var roomAmenities : some View {
        VStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 326, height: 1)
                .background(.black)
            
            Text("ROOM AMENITIES")
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 326, height: 1)
                .background(.black)
        }
    }
    
    fileprivate var optionSelects : some View {
        VStack{
            Text("Enhance Your Stay")
            
            VStack{
                Image("room")
                
                Text("Breakfast")
                Text("Per Person Per Night\nStart the day with a delicious breakfast")
                
                HStack{
                    Text("$80")
                    Text("per person")
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
