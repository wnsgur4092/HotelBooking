//
//  MiniTotalView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import SwiftUI

struct MiniTotalView: View {
    var body: some View {
        HStack{
            Text("$12600.00 AUD")
            
            Button {
                
            } label: {
                Text("NEXT")
            }
        }
        .frame(height: 80)
  
    }
}

struct MiniTotalView_Previews: PreviewProvider {
    static var previews: some View {
        MiniTotalView()
    }
}
