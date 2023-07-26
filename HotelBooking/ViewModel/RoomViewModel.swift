//
//  RoomViewModel.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 26/7/2023.
//

import SwiftUI

class RoomViewModel : ObservableObject {
    @Published var rooms = [Room]()
    
    var imageLoaders: [String: ImageLoader] = [:]
    
    func loadThemes() {
        let query = Room.query()
        
        query.find { result in
            switch result {
            case .success(let rooms) :
                DispatchQueue.main.async {
                    self.rooms = rooms
                    print("fetching rooms: \(rooms.count)")
                    
                    // Create an ImageLoader for each theme.
                    for room in rooms {
                        if let url = room.roomImage?.url {
                            let imageLoader = ImageLoader()
                            imageLoader.load(url: url)
                            self.imageLoaders[room.objectId ?? ""] = imageLoader
                        }
                    }
                }
            case .failure(let error) :
                print("Error fetching themes: \(error)")
            }
        }
    }
    
    func image(for room: Room) -> Image? {
        return imageLoaders[room.objectId ?? ""]?.image
    }
}
