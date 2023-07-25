//
//  Miniplayer.swift
//  AppleMusic
//
//  Created by Balaji on 16/11/20.
//

import SwiftUI

struct Miniplayer: View {
    var animation: Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    // safearea...
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    // Volume Slider...
    
    @State var volume : CGFloat = 0
    
    // gesture Offset...
    
    @State var offset : CGFloat = 0
    
    var body: some View {
        
        VStack{
            
            Image(systemName: "chevron.down")
                .resizable()
                .frame(width: 40, height: 8)
                .rotationEffect(.degrees(expand ? 0 : 180))
                .padding(.vertical, expand ? 40 : 0)

            
//            Capsule()
//                .fill(Color.gray)
//                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
//                .opacity(expand ? 1 : 0)
//                .padding(.vertical,expand ? 20 : 0)
            
            HStack(spacing: 15){
                
                // centering IMage...
                if !expand{
                    
                    Text("1260.00 AUD")
                        .font(.title2)
                        .fontWeight(.bold)
//                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer()
                
                if !expand{
                    
                    Button(action: {}, label: {
                        
                        Text("NEXT")
                    })
                }
                
                
            }
            .padding(.horizontal)
            
            VStack(alignment: .center, spacing: 12){
                HStack{
                    if expand{
                        Text("Subtotal")
                        
                        Spacer()
                        
                        Text("1560.00 AUD")
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                    }
                }
                
                Rectangle()
                  .frame(maxWidth: .infinity, maxHeight: 1)

                HStack{
                    Text("Current Rate Selection")
                    Spacer()
                }
                
                VStack{
                    HStack{
                        Text("Room Only")
                        Spacer()
                    }
                    HStack{
                        Text("1537.50 USD x 2 Nights")
                        Spacer()
                    }
                }
                
                
                Rectangle()
                  .frame(maxWidth: .infinity, maxHeight: 1)
                
                HStack{
                    Text("Enhancements")
                    Spacer()
                }
                
                VStack{
                    HStack{
                        Text("Special Surprise")
                        Spacer()
                    }
  
                    HStack{
                        Text("1 Night")
                        Spacer()
                        Text("300.00 DKK")
                    }
                }
                
                Spacer()
                
            }
            // this will give strech effect...
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .padding(.horizontal, 30)
        .foregroundColor(.white)
        // expanding to full screen when clicked...
        .frame(maxHeight: expand ? .infinity : 80)
        // moving the miniplayer above the tabbar...
        // approz tab bar height is 49
        
        // Divider Line For Separting Miniplayer And Tab Bar....
        .background(
        
            VStack(spacing: 0){
                
                BlurView()
                
                Divider()
            }
            .onTapGesture(perform: {
                
                withAnimation(.spring()){expand = true}
            })
            .background(Color.black)
        )
        .clipShape(RoundedCorners(tl: 16, tr: 16, bl: 0, br: 0))
//        .cornerRadius(expand ? 20 : 0)
//        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
//        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value){
        
        // only allowing when its expanded...
        
        if value.translation.height > 0 && expand {
            
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value){
        
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)){
            
            // if value is > than height / 3 then closing view...
            
            if value.translation.height > height{
                
                expand = false
            }
            
            offset = 0
        }
    }
}

