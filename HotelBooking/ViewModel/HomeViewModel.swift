//
//  HomeViewModel.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import Foundation
import SwiftUI
//import Alamofire

class HomeViewModel : ObservableObject {
    @Published var themes = [Theme]()
    @Published var collections = [Collection]()
    var imageLoaders: [String: ImageLoader] = [:]
    
    func loadThemes() {
        let query = Theme.query()
        
        query.find { result in
            switch result {
            case .success(let themes) :
                DispatchQueue.main.async {
                    self.themes = themes
                    print("fetching themes: \(themes.count)")
                    
                    // Create an ImageLoader for each theme.
                    for theme in themes {
                        if let url = theme.themeImage?.url {
                            let imageLoader = ImageLoader()
                            imageLoader.load(url: url)
                            self.imageLoaders[theme.objectId ?? ""] = imageLoader
                        }
                    }
                }
            case .failure(let error) :
                print("Error fetching themes: \(error)")
            }
        }
    }

    func loadCollections() {
        let query = Collection.query()
        
        query.find { result in
            switch result {
            case .success(let collections) :
                DispatchQueue.main.async {
                    self.collections = collections
                    print("fetching collections: \(collections.count)")
                    
                    // Create an ImageLoader for each collection.
                    for collection in collections {
                        if let url = collection.collectionImage?.url {
                            let imageLoader = ImageLoader()
                            imageLoader.load(url: url)
                            self.imageLoaders[collection.objectId ?? ""] = imageLoader
                        }
                    }
                }
            case .failure(let error) :
                print("Error fetching collections: \(error)")
            }
        }
    }
    
    func image(for theme: Theme) -> Image? {
        return imageLoaders[theme.objectId ?? ""]?.image
    }
    
    func image(for collection: Collection) -> Image? {
        return imageLoaders[collection.objectId ?? ""]?.image
    }
}
