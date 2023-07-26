//
//  CollectionCard.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 5/7/2023.
//

import SwiftUI


struct CollectionCard: View {
    var collection: Collection
    @StateObject private var imageLoader = ImageLoader()
    
    var body: some View {
        Group {
            if let image = imageLoader.image {
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                    .frame(width: 280, height: 292)
                //                    .frame(maxWidth: .infinity)
            } else {
                ProgressView()
                    .frame(width: 280, height: 292)
            }
        }
        .onAppear {
            if let imageUrl = collection.collectionImage?.url {
                imageLoader.load(url: imageUrl)
            }
        }
    }
}

//struct CollectionCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CollectionCard(theme: "")
//    }
//}
