//
//  TotalView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import SwiftUI

struct TotalView: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Subtotal")
                    
                    Text("1260.00 AUD")
                }
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 267.54349, height: 1)
                  .background(.black)
            }
            
            ScrollView{
                
                
                VStack{
                    Text("Current Rate Selection")
                    
                    Text("Room Only")
                    
                    Text("1537.50 USD x 2 Nights")
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 267.54349, height: 1)
                      .background(.black)
                }

                VStack{
                    Text("Enhancements")
                }
                
                Button {
                    print("Add done")
                } label: {
                    HStack(alignment: .center, spacing: 18.9304){
                        Text("ADD ROOM & CHECK OUT")
                          .font(
                            Font.custom("Poppins", size: 16)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .frame(width: 267, alignment: .center)
                    .background(Color(red: 0.16, green: 0.3, blue: 0.07))
                    .cornerRadius(8)
                }


            }
        }
        .frame(maxWidth:.infinity)
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 16))
        .padding()
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView().previewLayout(.sizeThatFits)
    }
}
