//
//  Header.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import SwiftUI

struct Header: View {
    //MARK: - PROPERTIES
    var title : String
    var subtitle : String
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text(title)
                .font(regularFont(size: 28))
            
            Text(subtitle)
                .font(regularFont(size: 16))
        }
        .foregroundColor(.white)
        .padding(.horizontal, 30)
        .padding(.bottom, 20)
        .padding(.top, 52)
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity)
        .background(mainColor)
        .clipShape(RoundedCorners(tl: 0, tr: 0, bl: 22, br: 22))
    }
}


struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "Let’s pick you up the best rooms", subtitle: "Cople and a place to be inspired. We offer a bespoke.")
            .previewLayout(.sizeThatFits)
    }
}
