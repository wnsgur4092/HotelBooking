//
//  BookingDateViewModel.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 25/7/2023.
//

import Foundation
import SwiftUI

class BookingDateViewModel : ObservableObject {
    @Published var isPresented : Binding<Bool>
    
    init(isPresented: Binding<Bool>){
        self.isPresented = isPresented
    }
}
