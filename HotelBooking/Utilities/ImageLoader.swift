//
//  ImageLoader.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 27/7/2023.
//

import Alamofire
import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: Image?

    func load(url: URL) {
        AF.request(url).responseData { response in
            if let data = response.data {
                DispatchQueue.main.async {
                    self.image = Image(uiImage: UIImage(data: data)!)
                }
            }
        }
    }
}
